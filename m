Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C08B5678F15
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 04:45:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88D4E44481
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 03:45:02 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by lists.linaro.org (Postfix) with ESMTPS id 270BD3EA52
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 03:44:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Q2BU0GNQ;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1674531885; x=1706067885;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=llzNk44ai2kUw+bb6PggWcQopKhOjJdBfAbzDb2u3TY=;
  b=Q2BU0GNQLiuxqPbGHgEHQLZvvXg73qsPueV8EB1HrXsfG7dekaJk0WVT
   nyOjknqZHkRlbdWx48x4FyIGU+c5P1H1nuvtM85Ah6e5nM4zIxyPwrew/
   jQuaLxmm1jYD4FLGG9uUg4cZWjZMpq100Ckvt2u6gvYJ+fzIopBKwETPj
   myuPi40IyO/lADfsJf1XjATxDlsnvcS3vK/7weJZHNer3ILM+PqH/kd/u
   YPtsy/lGVtUAFwk3Dhojr9WUoFsgoCt9ifHxhq6Q38tSkH2kvXcgZ3mVs
   6TUD0QdFqC41NXEulqKwpWDEq2E4WjpOYEOLsWoWHZ+kVUJm7uWo42DUd
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="306577704"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000";
   d="scan'208";a="306577704"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2023 19:44:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655280246"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000";
   d="scan'208";a="655280246"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 23 Jan 2023 19:44:37 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pKAEe-00066K-2B;
	Tue, 24 Jan 2023 03:44:36 +0000
Date: Tue, 24 Jan 2023 11:44:22 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	l.stach@pengutronix.de, nicolas@ndufresne.ca, ppaalanen@gmail.com,
	sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com,
	tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org, benjamin.gaignard@collabora.com,
	lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com,
	jstultz@google.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Message-ID: <202301241137.qT2rnQ5T-lkp@intel.com>
References: <20230123123756.401692-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123123756.401692-3-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 270BD3EA52
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.20 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[192.55.52.151:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.151/32];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de,ndufresne.ca,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,ideasonboard.com,kernel.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BQPDFDLKCPYVOEOGNWC7T7TLOVGBYHDE
X-Message-ID-Hash: BQPDFDLKCPYVOEOGNWC7T7TLOVGBYHDE
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] media: uvcvideo: expose dma-heap hint to userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BQPDFDLKCPYVOEOGNWC7T7TLOVGBYHDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on media-tree/master drm-tip/drm-tip linus/master =
v6.2-rc5]
[cannot apply to next-20230123]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/medi=
a-uvcvideo-expose-dma-heap-hint-to-userspace/20230123-213836
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230123123756.401692-3-christian.=
koenig%40amd.com
patch subject: [PATCH 2/2] media: uvcvideo: expose dma-heap hint to userspa=
ce
config: i386-randconfig-a002-20230123 (https://download.01.org/0day-ci/arch=
ive/20230124/202301241137.qT2rnQ5T-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=3D1 build):
        # https://github.com/intel-lab-lkp/linux/commit/adc04dccd892eec7f84=
c6ec112b48df376172e48
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Christian-K-nig/media-uvcvideo-exp=
ose-dma-heap-hint-to-userspace/20230123-213836
        git checkout adc04dccd892eec7f84c6ec112b48df376172e48
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=3D1 O=3Dbuild_dir ARCH=3Di386 olddefconfig
        make W=3D1 O=3Dbuild_dir ARCH=3Di386 SHELL=3D/bin/bash drivers/medi=
a/usb/uvc/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/media/usb/uvc/uvc_driver.c:10:
>> include/linux/dma-heap.h:92:5: warning: no previous prototype for 'dma_h=
eap_create_device_link' [-Wmissing-prototypes]
      92 | int dma_heap_create_device_link(struct device *dev, const char *=
heap)
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/dma-heap.h:97:6: warning: no previous prototype for 'dma_h=
eap_remove_device_link' [-Wmissing-prototypes]
      97 | void dma_heap_remove_device_link(struct device *dev)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/dma_heap_create_device_link +92 include/linux/dma-heap.h

4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   91 =20
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23  @92  int dma_heap_create_devic=
e_link(struct device *dev, const char *heap)
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   93  {
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   94  	return 0;
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   95  }
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   96 =20
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23  @97  void dma_heap_remove_devi=
ce_link(struct device *dev)
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   98  {
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   99  }
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23  100 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
