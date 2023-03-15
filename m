Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 863566BAAEB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 09:38:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48ECB3F1A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 08:38:07 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id 3D2953E965
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Mar 2023 08:37:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=kn2WKgYk;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678869467; x=1710405467;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MGe+wu03SgVhyZX13WFZVMUGp4Eh/8ZQN9CHXaDvzYI=;
  b=kn2WKgYkdjxsijSmeTfMgj2RbBI6jKQZUlw9YtvtTisi44TINPWLhmHB
   GXoUi9oB52FzApVN6kA8TTQXFTQEvXw3iSI6rKcq/SIccgoFDZraUjusg
   LFLrlVX/6Vbz75MAEuLETalsajxgLg4F0YfZp+0CqMglAqVawPANgkV75
   r2BXDtrtHmyM6k59+O+MgJuuIh7BVCzlA7pj4TbYnG5SzAlwwykfOvJyw
   k4WttBtiGBe8+R3F0h1vYEyeZLug/wRf6pcYbEJuZ6FmSItgA2yz48ySu
   xX8J+RGGa60Y4zMrtHhs8ScIwLc+oCjduqh8DkB5NqcAsJ4hB1g0L9xpO
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="317299587"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400";
   d="scan'208";a="317299587"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 01:37:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="789713577"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400";
   d="scan'208";a="789713577"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2023 01:37:26 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pcMdS-0007Xn-0o;
	Wed, 15 Mar 2023 08:37:26 +0000
Date: Wed, 15 Mar 2023 16:36:29 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202303151639.4xUPfzJD-lkp@intel.com>
References: <20230314105257.17345-3-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314105257.17345-3-paul@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3D2953E965
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.136/32];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[git-scm.com:url,intel.com:dkim,intel.com:email,mga12.intel.com:rdns,mga12.intel.com:helo];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[git-scm.com:url,intel.com:dkim,intel.com:email,01.org:url];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[]
Message-ID-Hash: WJYDMI54GIFHRGWGPQALANTR7QAOPGSR
X-Message-ID-Hash: WJYDMI54GIFHRGWGPQALANTR7QAOPGSR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, Paul Cercueil <paul@crapouillou.net>, michael.hennerich@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nuno.sa@analog.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WJYDMI54GIFHRGWGPQALANTR7QAOPGSR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Paul,

I love your patch! Perhaps something to improve:

[auto build test WARNING on usb/usb-testing]
[also build test WARNING on usb/usb-next usb/usb-linus linus/master v6.3-rc2 next-20230315]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20230314-185522
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
patch link:    https://lore.kernel.org/r/20230314105257.17345-3-paul%40crapouillou.net
patch subject: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
config: s390-randconfig-r002-20230312 (https://download.01.org/0day-ci/archive/20230315/202303151639.4xUPfzJD-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/4ee364ed5d112c4550344fd037f4e1ef7cc41878
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20230314-185522
        git checkout 4ee364ed5d112c4550344fd037f4e1ef7cc41878
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=s390 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=s390 SHELL=/bin/bash drivers/media/platform/mediatek/jpeg/ drivers/usb/gadget/function/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303151639.4xUPfzJD-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/usb/gadget/function/f_fs.c:18:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:547:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:560:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:37:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from drivers/usb/gadget/function/f_fs.c:18:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:573:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:35:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from drivers/usb/gadget/function/f_fs.c:18:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:584:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:594:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:604:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:692:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:700:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:708:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:717:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:726:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:735:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/usb/gadget/function/f_fs.c:1401:5: warning: no previous prototype for function 'ffs_dma_resv_lock' [-Wmissing-prototypes]
   int ffs_dma_resv_lock(struct dma_buf *dmabuf, bool nonblock)
       ^
   drivers/usb/gadget/function/f_fs.c:1401:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int ffs_dma_resv_lock(struct dma_buf *dmabuf, bool nonblock)
   ^
   static 
   13 warnings generated.


vim +/ffs_dma_resv_lock +1401 drivers/usb/gadget/function/f_fs.c

  1400	
> 1401	int ffs_dma_resv_lock(struct dma_buf *dmabuf, bool nonblock)
  1402	{
  1403		int ret;
  1404	
  1405		ret = dma_resv_lock_interruptible(dmabuf->resv, NULL);
  1406		if (ret) {
  1407			if (ret != -EDEADLK)
  1408				goto out;
  1409			if (nonblock) {
  1410				ret = -EBUSY;
  1411				goto out;
  1412			}
  1413	
  1414			ret = dma_resv_lock_slow_interruptible(dmabuf->resv, NULL);
  1415		}
  1416	
  1417	out:
  1418		return ret;
  1419	}
  1420	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
