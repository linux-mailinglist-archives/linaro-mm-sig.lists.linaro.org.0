Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D22196BBF37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 22:38:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D71223F456
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 21:38:44 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id 4A17B3F05F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Mar 2023 21:38:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=k+qzvlE2;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678916303; x=1710452303;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bN4ryWZxzvEFPRc6DSLUskI5Lq1cF0UDC0McBXRKWV0=;
  b=k+qzvlE2cx6ayfx7wRKNSfLveOpwOJM9zH1H0EM+fT4jcVCwqgd7UEte
   ju3LwOPRFA3wSHgwJlzPBJpesSJZczXazPE0cKqg3bWwvlpoAOJD/F+xR
   4p487+NNm9HH5PqzB0TQpsP2In+0FyhMSmBJkO5HU+dmKI5b7rBuI85lm
   QTpq9LrUSOTBUYcE1Dsxg4AStPu1QJM3dZh/GhtGK/OzynQ+HW0Ka3G+Z
   qyrcd5hTQ5l474WaqQe4ndsH27b3tUofMCoedl/zi/v3/4ID7YiLWqfi7
   ZYUcfFCzgi9OtBs36D9BbKJa3OkZRDwilpsl0XPScoKUB7HXZ+n7wgdVA
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402693623"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400";
   d="scan'208";a="402693623"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 14:36:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709822609"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400";
   d="scan'208";a="709822609"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 15 Mar 2023 14:36:09 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pcYn2-00083D-1R;
	Wed, 15 Mar 2023 21:36:08 +0000
Date: Thu, 16 Mar 2023 05:36:05 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202303160514.ZHer8I6t-lkp@intel.com>
References: <20230314105257.17345-3-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314105257.17345-3-paul@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4A17B3F05F
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.100/32];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[134.134.136.100:from]
Message-ID-Hash: N4WF2H6UBDPO4WOKY3JMVKNOC2DLBXKQ
X-Message-ID-Hash: N4WF2H6UBDPO4WOKY3JMVKNOC2DLBXKQ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, Paul Cercueil <paul@crapouillou.net>, michael.hennerich@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nuno.sa@analog.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N4WF2H6UBDPO4WOKY3JMVKNOC2DLBXKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Paul,

I love your patch! Yet something to improve:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on usb/usb-next usb/usb-linus linus/master v6.3-rc2 next-20230315]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20230314-185522
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
patch link:    https://lore.kernel.org/r/20230314105257.17345-3-paul%40crapouillou.net
patch subject: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
config: i386-randconfig-a014-20230313 (https://download.01.org/0day-ci/archive/20230316/202303160514.ZHer8I6t-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/4ee364ed5d112c4550344fd037f4e1ef7cc41878
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20230314-185522
        git checkout 4ee364ed5d112c4550344fd037f4e1ef7cc41878
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303160514.ZHer8I6t-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: module usb_f_fs uses symbol dma_buf_get from namespace DMA_BUF, but does not import it.
>> ERROR: modpost: module usb_f_fs uses symbol dma_buf_attach from namespace DMA_BUF, but does not import it.
>> ERROR: modpost: module usb_f_fs uses symbol dma_buf_detach from namespace DMA_BUF, but does not import it.
>> ERROR: modpost: module usb_f_fs uses symbol dma_buf_put from namespace DMA_BUF, but does not import it.
>> ERROR: modpost: module usb_f_fs uses symbol dma_buf_map_attachment from namespace DMA_BUF, but does not import it.
>> ERROR: modpost: module usb_f_fs uses symbol dma_buf_unmap_attachment from namespace DMA_BUF, but does not import it.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
