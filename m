Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E585BB69F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 17 Sep 2022 08:17:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EFE848AD5
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 17 Sep 2022 06:17:18 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id C74343F493
	for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Sep 2022 06:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663395432; x=1694931432;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=upEne6jANUUW2HNKG46U6wKVg+lb5Ctnz/1MJFQVakw=;
  b=l0vC1hQDxv7HDNXpM0QKrOaddQYFj3JZKcIczu5YGUe26Om0iumgl0gL
   nXSrjaYMWFVO+LZWmtSPHi2qkkSinZRv6YeMbjWc6kbey52iS4eF1DFeF
   GbxKY3PDMJIFxFNF5ythDkjFrkI0ekpUsQMeLVQdlsyVKEjYu2ogShbEY
   eavMqQHd639HUyOLNrJeFxLqTCQvZp2ZRaGIoSG4+sFILSUEv/t2oiyjr
   49Bza8tXdbZzK/mP/O/QREqWO7Z0oHvm6QL/HADK8yZEzE9dKQ8Geqs4T
   m6gXihlXgmqikvf3+cM05Dajt7ibk9dNMaED3S1yMMZ78ENg8ie9a25O3
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278857624"
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200";
   d="scan'208";a="278857624"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2022 23:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200";
   d="scan'208";a="617926963"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
  by orsmga002.jf.intel.com with SMTP; 16 Sep 2022 23:17:06 -0700
Received: by stinkbox (sSMTP sendmail emulation); Sat, 17 Sep 2022 09:17:05 +0300
Date: Sat, 17 Sep 2022 09:17:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YyVmYXGCfTuYUsNb@intel.com>
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <d2d81ffd-2269-bdc6-0daa-8f3a99306e46@amd.com>
 <33a16b15-3d3c-7485-d021-ee2a727e5391@amd.com>
 <691c421f-1297-cd08-ea70-6750099275b1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <691c421f-1297-cd08-ea70-6750099275b1@amd.com>
X-Patchwork-Hint: comment
Message-ID-Hash: RUZDS4CSUXZ4T3H35TQ7LS33DP7KUEWA
X-Message-ID-Hash: RUZDS4CSUXZ4T3H35TQ7LS33DP7KUEWA
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Yadav, Arvind" <arvyadav@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com, shashank.sharma@amd.com, amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RUZDS4CSUXZ4T3H35TQ7LS33DP7KUEWA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 15, 2022 at 06:05:30PM +0200, Christian K=F6nig wrote:
> Am 15.09.22 um 15:02 schrieb Yadav, Arvind:
> >
> > On 9/15/2022 5:37 PM, Christian K=F6nig wrote:
> >> Is that sufficient to allow running a desktop on amdgpu with the=20
> >> extra check enabled? If yes that would be quite a milestone.
> >>
> > Yes, It is running on amdgpu with extra config enabled.
>=20
> In this case I will start pushing the patches to drm-misc-next. I'm just =

> going to leave out the last one until the IGT tests are working as well.

ffs Christian. intel CI blew up yet again:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/shard-glk7/igt@kms_pl=
ane_lowres@tiling-y@pipe-c-hdmi-a-2.html

The last time (some ttm thing) was just a week or two ago,
so it's really getting tiresome watching you push entirely
untested stuff all the time. Would be really helpful if you
finally started to do/require premerge testing.

--=20
Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
