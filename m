Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BC8590B7E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 07:27:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E6083F50B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 05:27:40 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 61F313F1D2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 05:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660282057; x=1691818057;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=aD66a3tlUSHNk9f+LMWfIXawj2d8pgOYlU8yPhvZhyU=;
  b=iXz5xrSVk4iOPeRa9kHKFYFN1ye9CqgS6mcMHGuD8M8BFVjUXBnH3LQU
   kSZJS9IMrBouZ26SbJAQjcWHDplQvApVy1AUnthSYOY5IiEZ/d29eTyK0
   15InJ1qEKKPDG3bM44lr+OC6o77OOUVmw0PW5p/7elIkQwxRC/2icslgB
   NUyn0lY9Om51+VzDIr0gUNWpW7tMFxwDr8crt4bSui/53InyO1w+E+u3g
   j8wWnY7OleZo+use5f8U6aX1acboX5GxgHYCQEqTclTeoAwhbkwKCBrvh
   lP9RPjYU5T2+h7Mu3y/KTHRILVDnsmRQmtzPRuhOn4fNb2nfAN/H2N5LB
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292319491"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200";
   d="scan'208";a="292319491"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2022 22:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200";
   d="scan'208";a="556407140"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 11 Aug 2022 22:27:33 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oMNCm-0000CU-2a;
	Fri, 12 Aug 2022 05:27:32 +0000
Date: Fri, 12 Aug 2022 13:27:13 +0800
From: kernel test robot <lkp@intel.com>
To: Olivier Masse <olivier.masse@nxp.com>, jens.wiklander@linaro.org,
	sumit.garg@linaro.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, op-tee@lists.trustedfirmware.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org
Message-ID: <202208121326.FWVAzlch-lkp@intel.com>
References: <20220811135637.6332-2-olivier.masse@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220811135637.6332-2-olivier.masse@nxp.com>
Message-ID-Hash: TP7OF6DUADXP2SDZBSVQINIRY63IMCQD
X-Message-ID-Hash: TP7OF6DUADXP2SDZBSVQINIRY63IMCQD
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, clement.faure@nxp.com, olivier.masse@nxp.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/1] tee: new ioctl to a register tee_shm from a dmabuf file descriptor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TP7OF6DUADXP2SDZBSVQINIRY63IMCQD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Olivier,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on drm-tip/drm-tip linus/master v5.19 next-20220811]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Olivier-Masse/tee-Add-tee_shm_register_fd/20220811-220012
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220812/202208121326.FWVAzlch-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/2e8827973f200fdfe64366bec5a57686086f4672
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Olivier-Masse/tee-Add-tee_shm_register_fd/20220811-220012
        git checkout 2e8827973f200fdfe64366bec5a57686086f4672
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from <command-line>:
>> ./usr/include/linux/tee.h:136:13: error: expected declaration specifiers or '...' before numeric constant
     136 | } __aligned(8);
         |             ^

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
