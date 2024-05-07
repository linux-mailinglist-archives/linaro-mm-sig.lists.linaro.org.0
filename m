Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 908118BE42D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 15:34:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DCFD3F02C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 13:34:58 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by lists.linaro.org (Postfix) with ESMTPS id 3F7AD3F346
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 13:34:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=dlh7lWzu;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.44 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51f74fa2a82so3637752e87.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 06:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715088886; x=1715693686; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IKHBCvFKsC6Nzkx2NIWqoEqwLv1oOisbbcdd9aYPJks=;
        b=dlh7lWzu1ikYLFlFJz0UVwIxbZfntRZaS3ErobIM1sHpTUIwaH5cl4iAymiru7S0gn
         Fy9LPODf/umxCOo3rLAoBbjbwDJTCs/RVGhwjO4/tJx1g8pxxBUAb3R6cax+JGbQJ/0O
         pm5bFN8HAwfsBBhlitInBo6ecEHeG7biYrS+R3IjZBpMzJmbjtCYAuXvy1YQydAlqgP1
         jTvDLu+dAVgwrym0I39ZicDkjeSAox2cmeoOaOO3avKd2kFX8+6K6uV//iwKjnIajpsi
         7YhywJ+tjbhEPfZJCgMVyIWmxhV+I8auWLz/a7O5/jrxkgEmbj3Wt/E/pUpg+BmC5Mkg
         Nmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715088886; x=1715693686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IKHBCvFKsC6Nzkx2NIWqoEqwLv1oOisbbcdd9aYPJks=;
        b=XK5q+rbvriOs56vUml5KNpSwq3PKqooS/N5kS2AQDY/IUTV+Gfj5EErC0jFQav5UyS
         pSWQREKyUFmn74HsiE1kmZBrUarldwafAsmDJheQ0nmiALRGMxTMZKX9xSnbcPiptO5z
         pKwHVsjhjGB8S7eLhggE0dWGfkM/oHB3dxtjAimBVeCoTjuneok1tXi0QVcRThkE8mSk
         zTdqsmfsmOEdQsguOVdMsZaf5Stvvp4dYMas3eKaNb91AEeFzBy/4i0nKv68IAKUzjf1
         A+BMZeALgIacVaGXJyQmd9w3TuxMpNlGL38N7Z/m98/ea9pSK2P4iGTDGMliyRbm9UQE
         4+3g==
X-Forwarded-Encrypted: i=1; AJvYcCUjF30F+5hMAro3he03PhUoQSuKp2r8ORzwA2TwcBasMfwC0Z0WxJRDYLfV0Dau2U1oSC2CnRZs2Mt6Aymghkm0+jH6FZzNq4o65ahulAI=
X-Gm-Message-State: AOJu0YwN0Du+NeAPXe+1R434tqBa8TqvlGdQu+ZbtIpbxc9ZxOrjPZ1Z
	nR2p2Gnj3wtE/tfQ5z2SjyvrmEvWFmaCIihaQIsaocQ/dSl39RF0I3xvKSUG+4QYoA==
X-Google-Smtp-Source: AGHT+IGyKKhW4HnullLr9tx7zUu9woNhXXRdGqxwVRSmjqIAiK9LODOmA2YK6g9UQq++3wQQpsuazA==
X-Received: by 2002:a05:6512:4016:b0:51f:567b:c399 with SMTP id br22-20020a056512401600b0051f567bc399mr14982616lfb.62.1715088885984;
        Tue, 07 May 2024 06:34:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id t6-20020ac243a6000000b0051d87562dfasm2116396lfl.27.2024.05.07.06.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:34:45 -0700 (PDT)
Date: Tue, 7 May 2024 16:34:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <xwozli5vbte53ohjhjmne6zzfgmdxey43i35d37ht7rrxooixi@ijfqthxe6voj>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat>
 <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3F7AD3F346
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.44:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: VXUTB5YW2NXMJRX45Y4VAYRVJM3YQKS6
X-Message-ID-Hash: VXUTB5YW2NXMJRX45Y4VAYRVJM3YQKS6
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VXUTB5YW2NXMJRX45Y4VAYRVJM3YQKS6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 06, 2024 at 04:01:42PM +0200, Hans de Goede wrote:
> Hi Sima,
> 
> On 5/6/24 3:38 PM, Daniel Vetter wrote:
> > On Mon, May 06, 2024 at 02:05:12PM +0200, Maxime Ripard wrote:
> >> Hi,
> >>
> >> On Mon, May 06, 2024 at 01:49:17PM GMT, Hans de Goede wrote:
> >>> Hi dma-buf maintainers, et.al.,
> >>>
> >>> Various people have been working on making complex/MIPI cameras work OOTB
> >>> with mainline Linux kernels and an opensource userspace stack.
> >>>
> >>> The generic solution adds a software ISP (for Debayering and 3A) to
> >>> libcamera. Libcamera's API guarantees that buffers handed to applications
> >>> using it are dma-bufs so that these can be passed to e.g. a video encoder.
> >>>
> >>> In order to meet this API guarantee the libcamera software ISP allocates
> >>> dma-bufs from userspace through one of the /dev/dma_heap/* heaps. For
> >>> the Fedora COPR repo for the PoC of this:
> >>> https://hansdegoede.dreamwidth.org/28153.html
> >>
> >> For the record, we're also considering using them for ARM KMS devices,
> >> so it would be better if the solution wasn't only considering v4l2
> >> devices.
> >>
> >>> I have added a simple udev rule to give physically present users access
> >>> to the dma_heap-s:
> >>>
> >>> KERNEL=="system", SUBSYSTEM=="dma_heap", TAG+="uaccess"
> >>>
> >>> (and on Rasperry Pi devices any users in the video group get access)
> >>>
> >>> This was just a quick fix for the PoC. Now that we are ready to move out
> >>> of the PoC phase and start actually integrating this into distributions
> >>> the question becomes if this is an acceptable solution; or if we need some
> >>> other way to deal with this ?
> >>>
> >>> Specifically the question is if this will have any negative security
> >>> implications? I can certainly see this being used to do some sort of
> >>> denial of service attack on the system (1). This is especially true for
> >>> the cma heap which generally speaking is a limited resource.
> >>
> >> There's plenty of other ways to exhaust CMA, like allocating too much
> >> KMS or v4l2 buffers. I'm not sure we should consider dma-heaps
> >> differently than those if it's part of our threat model.
> > 
> > So generally for an arm soc where your display needs cma, your render node
> > doesn't. And user applications only have access to the later, while only
> > the compositor gets a kms fd through logind. At least in drm aside from
> > vc4 there's really no render driver that just gives you access to cma and
> > allows you to exhaust that, you need to be a compositor with drm master
> > access to the display.
> > 
> > Which means we're mostly protected against bad applications, and that's
> > not a threat the "user physically sits in front of the machine accounts
> > for", and which giving cma access to everyone would open up. And with
> > flathub/snaps/... this is very much an issue.
> 
> I agree that bad applications are an issue, but not for the flathub / snaps
> case. Flatpacks / snaps run sandboxed and don't have access to a full /dev
> so those should not be able to open /dev/dma_heap/* independent of
> the ACLs on /dev/dma_heap/*. The plan is for cameras using the
> libcamera software ISP to always be accessed through pipewire and
> the camera portal, so in this case pipewere is taking the place of
> the compositor in your kms vs render node example.
> 
> So this reduces the problem to bad apps packaged by regular distributions
> and if any of those misbehave the distros should fix that.
> 
> So I think that for the denial of service side allowing physical
> present users (but not sandboxed apps running as those users) to
> access /dev/dma_heap/* should be ok.

What about an app built by the user? The machines can still be
multi-seat or have multiple users.

> My bigger worry is if dma_heap (u)dma-bufs can be abused in other
> ways then causing a denial of service.
> 
> I guess that the answer there is that causing other security issues
> should not be possible ?
> 
> Regards,
> 
> Hans
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
