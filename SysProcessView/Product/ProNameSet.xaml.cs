﻿using System;
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
using SysProcessViewModel;
using SysProcessModel;
using Telerik.Windows.Data;
using Telerik.Windows.Controls.Data.DataForm;

namespace SysProcessView
{
    /// <summary>
    /// Interaction logic for ProNameSet.xaml
    /// </summary>
    public partial class ProNameSet : UserControl
    {
        ProNameVM _dataContext = new ProNameVM();

        public ProNameSet()
        {
            this.DataContext = _dataContext;
            InitializeComponent();
        }

        private void myRadDataForm_EditEnding(object sender, EditEndingEventArgs e)
        {
            UIHelper.AddOrUpdateRecord<ProName>(myRadDataForm, _dataContext, e);
        }

        private void myRadDataForm_DeletingItem(object sender, System.ComponentModel.CancelEventArgs e)
        {
            View.Extension.UIHelper.DeleteRecord<ProName>(myRadDataForm, _dataContext, e);
        }
    }
}
