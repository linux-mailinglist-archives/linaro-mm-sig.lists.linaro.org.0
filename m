Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A870615633
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 00:40:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 735B43F5C7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Nov 2022 23:40:24 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 1F5503F535
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Nov 2022 23:40:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=N4bCntNK;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.214.177 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id io19so15000901plb.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Nov 2022 16:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HMjoSMseYo9dv+OYtpDQcotuckgj0OnEhXYZObymQfA=;
        b=N4bCntNKJyNrCrWRnxFbKWGV538e38A/akJR4zZz/OuvuV1Bx92CKGBWkW4XIkb+mg
         at2PxLtvS+9V8fzxowpA0pMEHI/pFRmIUoF3dIlw96H4BwhgK79jOTHaNSb4ib3bQqJE
         AjvoxglA+JnoO3xYI+DkujScXt/j12hqgfLIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HMjoSMseYo9dv+OYtpDQcotuckgj0OnEhXYZObymQfA=;
        b=m9CZ9ec5oqVU5LSQ61zyDgxfZMJCSCd2m1FGYT8Z/IHUh4FdYc4M5avUUYKIU5TvJC
         QEWeAChrsKqqAl1VaUglBwADzbGD3ybJr4jZQr15aYugp+mq9Aoe9Bl483wUaFzFrF2k
         CEDZe0EVmr3avDVUWL1bcOAnfYqyCCD6a0EUv9wMnSeJyg8nliXtjdauRZ2CM32cVS42
         8L8y+d3XRaPuukXOF8OJkbWtg79hmKLs0JZlydkoGf42dc4gjnctW6fF07VYV9ED5Xpq
         UjCTHzrpb3MS9XolDC7LRQmKgF5ZqLxl8zxOAQEMEqzRgMG6XUeWVde4ZXskwMzi7tSc
         ihxg==
X-Gm-Message-State: ACrzQf1DkmuLd2BvQF5DzxrwSX8y8uzAFiXNgQ/SdV4gFsmNvibUy1wW
	O44VRc2t0eNe56AFcnT1PflU2w==
X-Google-Smtp-Source: AMsMyM4P4eIG6ZNPzEizuQdoi/YqYr8KPBMw3NArEJ1RJ/GARU4RtwCb2NPtiryMlgBp+ThPDf6xZw==
X-Received: by 2002:a17:90b:33c3:b0:213:f5be:c3ad with SMTP id lk3-20020a17090b33c300b00213f5bec3admr9845989pjb.123.1667346007336;
        Tue, 01 Nov 2022 16:40:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 20-20020a621714000000b0056ded8d5918sm636830pfx.134.2022.11.01.16.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 16:40:06 -0700 (PDT)
Date: Tue, 1 Nov 2022 16:40:05 -0700
From: Kees Cook <keescook@chromium.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Message-ID: <202211011639.4938CC9@keescook>
References: <20221013210714.16320-1-fmdefrancesco@gmail.com>
 <fb0b7389-7121-04f8-176d-1ababe0ad8f2@amd.com>
 <CADnq5_PP3VCXQ5rbC0-8Qsi5W7Ew87U_bRknz4=qxbrPxVQ+qA@mail.gmail.com>
 <1942083.usQuhbGJ8B@suse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1942083.usQuhbGJ8B@suse>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 1F5503F535
X-Spamd-Result: default: False [-7.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_TWELVE(0.00)[21];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,kernel.org,linaro.org,suse.com,roeck-us.net,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,intel.com];
	URIBL_BLOCKED(0.00)[linuxtv.org:url,chromium.org:dkim];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: SYWCVJOZAMJ6FHAGRZLDOWL3BAZDQMDB
X-Message-ID-Hash: SYWCVJOZAMJ6FHAGRZLDOWL3BAZDQMDB
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Christian Brauner <brauner@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-hwmon@vger.kernel.org, linux-hardening@vger.kernel.org, "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>, Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/radeon: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SYWCVJOZAMJ6FHAGRZLDOWL3BAZDQMDB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 02, 2022 at 12:11:53AM +0100, Fabio M. De Francesco wrote:
> On luned=EC 17 ottobre 2022 18:52:10 CET Alex Deucher wrote:
> > Applied.  Thanks!
>=20
> Many thanks to you!
>=20
> However, about a week ago, I received a report saying that this patch is =
"Not=20
> Applicable".=20
>=20
> That email was also referring to another patch, for which I'll reply in i=
ts=20
> own thread.
>=20
> That report has a link to https://patchwork.linuxtv.org/project/linux-med=
ia/
> patch/20221013210714.16320-1-fmdefrancesco@gmail.com/
>=20
> Can you please let me understand why, despite it was applied, this patch =
later=20
> shifted "State" to "Not Applicable"?

The kernel has multiple patchwork instances, so you got an "N/A" from
linux-media, but it was applied to the drm tree. (Yes, confusing. :P)

--=20
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
