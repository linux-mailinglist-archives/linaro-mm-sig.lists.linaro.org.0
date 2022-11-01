Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79938615609
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 00:21:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68AF63F535
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Nov 2022 23:21:17 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 1F2AC3EE5B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Nov 2022 23:21:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=W4VJj2Ox;
	spf=pass (lists.linaro.org: domain of fmdefrancesco@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id t1so6012886wmi.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Nov 2022 16:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wxyxXUAbWcBHc9d21EGasKXnhPYfVJvAuFGJWn1enDs=;
        b=W4VJj2OxkzduLyb1JVdbRtO0v8jmkBqRu5rWTymTBs2xiND8ig1Kf6Dk6XCJ/2f9ep
         cQJzoRGlY6/DWX+5JYKcdKIHfr0JS0MdaBQyIDUhRd+FOJaZxF3pHcf2xbHChhlW4rty
         ILkUYe3cws4PsfmVl+bjjyCH5pdUl/TjK0Gb9vr9EHjpFN12YTCZePl8gviTuDyZCDK8
         0bez6hGXn81BQtpLrWRp/HB6XLFdulYs7Cg5evyxfNLJKpKuGR4tQyfTfrvvLO+6Uevh
         tYBaubwq+L0LF2LYlxCace4VZ7EeIJQm7yZYpxUbOkPwwXmHvp+E7J4lRV4blnxjtOVV
         JqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wxyxXUAbWcBHc9d21EGasKXnhPYfVJvAuFGJWn1enDs=;
        b=xSrjTRTrDwrXH5u/JeGya50Kbh8m4nM0EMNtyY5t0a+Ag/7JRbtgs84tZMP+7nvWd7
         9WPtFTec3nMhdTWTTU/KlejZIsLlLDtgkaNC8V2YNocnd2QkvhsxVUqaJgQMieZRsoe9
         qxVFUsgEkSKdy8NWLdL8rCtAOt3o7+J7Iv8HxiC6NbBQvQqIt8TEkirZmuJHM7pobt/x
         TcKRxl+/9ggnYrY1LCxc2CP7e7zLNobPWVOyrMkZ9FOATn80HGkqoqpGpFqW74P4rYEk
         51O0ad9fnXYLazXLJQIlNcY2N9VdxPYIVD8aKY+9lKs736xzrrA2kQwEdZ3cuoVhBG/n
         hirg==
X-Gm-Message-State: ACrzQf13ePZ91WtY3RhobWpZ611OiD0O/WDUERc38pTgPNmYjCTG/erp
	cW7t81g0aLXOP37kDXs/Ugs=
X-Google-Smtp-Source: AMsMyM50e+QYw8SxGLXTQQSN/H4evMDT0wK2OPuH/ZtE+ylXd4szu1ziml/ktY5vD0j1TqS9pHNVkw==
X-Received: by 2002:a05:600c:1c0d:b0:3cf:5fd2:1fd1 with SMTP id j13-20020a05600c1c0d00b003cf5fd21fd1mr15921329wms.8.1667344860058;
        Tue, 01 Nov 2022 16:21:00 -0700 (PDT)
Received: from suse.localnet (host-79-43-11-206.retail.telecomitalia.it. [79.43.11.206])
        by smtp.gmail.com with ESMTPSA id dn12-20020a05600c654c00b003cf537ec2efsm123480wmb.36.2022.11.01.16.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 16:20:58 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 02 Nov 2022 00:11:53 +0100
Message-ID: <1942083.usQuhbGJ8B@suse>
In-Reply-To: <CADnq5_PP3VCXQ5rbC0-8Qsi5W7Ew87U_bRknz4=qxbrPxVQ+qA@mail.gmail.com>
References: <20221013210714.16320-1-fmdefrancesco@gmail.com> <fb0b7389-7121-04f8-176d-1ababe0ad8f2@amd.com> <CADnq5_PP3VCXQ5rbC0-8Qsi5W7Ew87U_bRknz4=qxbrPxVQ+qA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: 1F2AC3EE5B
X-Spamd-Result: default: False [-3.31 / 15.00];
	BAYES_HAM(-2.81)[99.18%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linuxtv.org:url];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	NEURAL_HAM(-0.00)[-0.964];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,kernel.org,linaro.org,suse.com,roeck-us.net,chromium.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,intel.com]
Message-ID-Hash: AEIYWQNQY56XJCQBKSF7J4C2NN4DJDMQ
X-Message-ID-Hash: AEIYWQNQY56XJCQBKSF7J4C2NN4DJDMQ
X-MailFrom: fmdefrancesco@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Deucher <alexander.deucher@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Christian Brauner <brauner@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Kees Cook <keescook@chromium.org>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-hwmon@vger.kernel.org, linux-hardening@vger.kernel.org, "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>, Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/radeon: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AEIYWQNQY56XJCQBKSF7J4C2NN4DJDMQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: quoted-printable

On luned=EC 17 ottobre 2022 18:52:10 CET Alex Deucher wrote:
> Applied.  Thanks!

Many thanks to you!

However, about a week ago, I received a report saying that this patch is "N=
ot=20
Applicable".=20

That email was also referring to another patch, for which I'll reply in its=
=20
own thread.

That report has a link to https://patchwork.linuxtv.org/project/linux-media/
patch/20221013210714.16320-1-fmdefrancesco@gmail.com/

Can you please let me understand why, despite it was applied, this patch la=
ter=20
shifted "State" to "Not Applicable"?

Thanks,

Fabio



_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
