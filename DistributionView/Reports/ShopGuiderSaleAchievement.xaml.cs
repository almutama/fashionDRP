﻿using DistributionViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DistributionView.Reports
{
    /// <summary>
    /// ShopGuiderSaleAchievement.xaml 的交互逻辑
    /// </summary>
    public partial class ShopGuiderSaleAchievement : UserControl
    {
        ShopGuiderSaleAchievementVM _dataContext = new ShopGuiderSaleAchievementVM();

        public ShopGuiderSaleAchievement()
        {
            this.DataContext = _dataContext;
            InitializeComponent();
        }

        private void btnExcel_Click(object sender, RoutedEventArgs e)
        {
            View.Extension.UIHelper.ExcelExport(RadGridView1);
        }
    }
}
