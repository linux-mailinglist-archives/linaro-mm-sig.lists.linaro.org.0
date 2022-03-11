Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2214D6835
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Mar 2022 18:59:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29BD83EEE8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Mar 2022 17:59:47 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by lists.linaro.org (Postfix) with ESMTPS id 23AF23EEE0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Mar 2022 17:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647021585; x=1678557585;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=k7e2g/eNySvoazSg+XH+0bqDjbRKCveB0kCgSux2C6Q=;
  b=ZlDPB/at0jYWvrVQyDgN1GEbRHR4g/1bXQa2hp/emRBSloYDjc3/bKHR
   F4K+oSSTSlQFBNNphQrOmDqxeaY639dWCJLV/1MuysWUBxJnlsjAStwS0
   pz0bfYJVpWBIWmVuXcWWWb6A7TUgTa4cm+2g3lBuOtD3+d3WGZE+NF4jD
   leVDfUgg+srNeAFK2g2GlEPWXz5K0HSvO+7j/frX/xJursWwcPLuIBGW+
   YhLS7dasBdaZS7Y1AymCk0pzruMkzAkSxDFqILHHqkdWTXraAssAu6Tlt
   atj8yOAR7xSMZOOl6udAxcVxxzX2MrI6RIctbsHUF8OSFa/gyf/TTFDQO
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="316343627"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="316343627"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 09:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="633488411"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Mar 2022 09:59:41 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nSjYC-0006tr-Fo; Fri, 11 Mar 2022 17:59:40 +0000
Date: Sat, 12 Mar 2022 01:59:27 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	sumit.semwal@linaro.org, gustavo@padovan.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Message-ID: <202203120115.Qe4GABIV-lkp@intel.com>
References: <20220311110244.1245-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311110244.1245-2-christian.koenig@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: JETS5746W5VEKN4JUKDNVI5CPX2EA7XR
X-Message-ID-Hash: JETS5746W5VEKN4JUKDNVI5CPX2EA7XR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf/sync-file: fix warning about fence containers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JETS5746W5VEKN4JUKDNVI5CPX2EA7XR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi "Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.17-rc7 next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/dma-buf-ad=
d-dma_fence_unwrap/20220311-190352
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
79b00034e9dcd2b065c1665c8b42f62b6b80a9be
config: arm64-randconfig-r014-20220310 (https://download.01.org/0day-ci/arc=
hive/20220312/202203120115.Qe4GABIV-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 276ca8=
7382b8f16a65bddac700202924228982f6)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/ca3584ac05c4a450e69b1c6bc=
b0672b5ab026c7c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Christian-K-nig/dma-buf-add-dma_fe=
nce_unwrap/20220311-190352
        git checkout ca3584ac05c4a450e69b1c6bcb0672b5ab026c7c
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 O=3Dbuild_dir ARCH=3Darm64 SHELL=3D/bin/bash drivers/dma-buf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/dma-buf/sync_file.c:8:
   include/linux/dma-fence-unwrap.h:44:18: error: implicit declaration of f=
unction 'dma_fence_chain_contained' [-Werror,-Wimplicit-function-declaratio=
n]
           cursor->array =3D dma_fence_chain_contained(cursor->chain);
                           ^
   include/linux/dma-fence-unwrap.h:44:18: note: did you mean 'dma_fence_ch=
ain_init'?
   include/linux/dma-fence-chain.h:108:6: note: 'dma_fence_chain_init' decl=
ared here
   void dma_fence_chain_init(struct dma_fence_chain *chain,
        ^
   In file included from drivers/dma-buf/sync_file.c:8:
>> include/linux/dma-fence-unwrap.h:44:16: warning: incompatible integer to=
 pointer conversion assigning to 'struct dma_fence *' from 'int' [-Wint-con=
version]
           cursor->array =3D dma_fence_chain_contained(cursor->chain);
                         ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-fence-unwrap.h:46:9: error: implicit declaration of fu=
nction 'dma_fence_array_first' [-Werror,-Wimplicit-function-declaration]
           return dma_fence_array_first(cursor->array);
                  ^
   include/linux/dma-fence-unwrap.h:46:9: note: did you mean 'dma_fence_arr=
ay_create'?
   include/linux/dma-fence-array.h:77:25: note: 'dma_fence_array_create' de=
clared here
   struct dma_fence_array *dma_fence_array_create(int num_fences,
                           ^
   In file included from drivers/dma-buf/sync_file.c:8:
>> include/linux/dma-fence-unwrap.h:46:9: warning: incompatible integer to =
pointer conversion returning 'int' from a function with result type 'struct=
 dma_fence *' [-Wint-conversion]
           return dma_fence_array_first(cursor->array);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-fence-unwrap.h:77:8: error: implicit declaration of fu=
nction 'dma_fence_array_next' [-Werror,-Wimplicit-function-declaration]
           tmp =3D dma_fence_array_next(cursor->array, cursor->index);
                 ^
   include/linux/dma-fence-unwrap.h:77:6: warning: incompatible integer to =
pointer conversion assigning to 'struct dma_fence *' from 'int' [-Wint-conv=
ersion]
           tmp =3D dma_fence_array_next(cursor->array, cursor->index);
               ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings and 3 errors generated.


vim +44 include/linux/dma-fence-unwrap.h

088aa14c0f5cad Christian K=F6nig 2022-03-11  33 =20
088aa14c0f5cad Christian K=F6nig 2022-03-11  34  /**
088aa14c0f5cad Christian K=F6nig 2022-03-11  35   * dma_fence_unwrap_array =
- helper to unwrap dma_fence_arrays
088aa14c0f5cad Christian K=F6nig 2022-03-11  36   * @cursor: cursor to init=
ialize
088aa14c0f5cad Christian K=F6nig 2022-03-11  37   *
088aa14c0f5cad Christian K=F6nig 2022-03-11  38   * Helper function to unwr=
ap dma_fence_array containers, don't touch directly.
088aa14c0f5cad Christian K=F6nig 2022-03-11  39   * Use dma_fence_unwrap_fi=
rst/next instead.
088aa14c0f5cad Christian K=F6nig 2022-03-11  40   */
088aa14c0f5cad Christian K=F6nig 2022-03-11  41  static inline struct dma_f=
ence *
088aa14c0f5cad Christian K=F6nig 2022-03-11  42  dma_fence_unwrap_array(str=
uct dma_fence_unwrap * cursor)
088aa14c0f5cad Christian K=F6nig 2022-03-11  43  {
088aa14c0f5cad Christian K=F6nig 2022-03-11 @44  	cursor->array =3D dma_fen=
ce_chain_contained(cursor->chain);
088aa14c0f5cad Christian K=F6nig 2022-03-11  45  	cursor->index =3D 0;
088aa14c0f5cad Christian K=F6nig 2022-03-11 @46  	return dma_fence_array_fi=
rst(cursor->array);
088aa14c0f5cad Christian K=F6nig 2022-03-11  47  }
088aa14c0f5cad Christian K=F6nig 2022-03-11  48 =20

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
