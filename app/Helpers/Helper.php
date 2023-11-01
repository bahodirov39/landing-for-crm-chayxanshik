<?php

namespace App\Helpers;

use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;

class Helper
{

    public static function formatNumber($number)
    {
        return number_format($number, 0, '.', ' ');
    }

    public static function formatPrice($number)
    {
        return self::formatNumber($number) . ' '; // . __('main.currency');
    }

    public static function formatPriceWithoutCurrency($number)
    {
        return self::formatNumber($number) . ' UZS';
    }

    public static function formatDate(Carbon $date, $year = false)
    {
        $yearFormat = ($year) ? ', Y' : '';
        return __($date->format('F')) . ' ' . $date->format('d' . $yearFormat);
    }

    public static function formatDateSecond(Carbon $date)
    {
        return '<div>' . $date->format('d') . '</div><div>' . __($date->format('F')) . '</div>';
    }

    public static function reformatPhone($phone)
    {
        $phone = preg_replace('#[^\d]#', '', $phone);
        if (mb_strlen($phone) == 9) {
            $phone = '998' . $phone;
        }
        return $phone;
    }
}
