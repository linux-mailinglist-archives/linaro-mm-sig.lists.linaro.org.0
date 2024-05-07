Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C158BE0C6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 13:15:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF7DC3F346
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 11:15:42 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by lists.linaro.org (Postfix) with ESMTPS id 5E0EF3F346
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 11:15:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Nqe8GwqF;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.54) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-34cba0d9a3eso228216f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 04:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715080530; x=1715685330; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wXHaXKdqUHwPFQAJMHKHEEcPt9R1JT6UoeAkdx1FiUQ=;
        b=Nqe8GwqFlZ2XIRpcZ8GrEnFzjtffPaH58+F5wZlQkGN1E9Jyep6JOVqqR7Mchi0NWZ
         Kp31ye5Mde5JIcA0Xy1AXHDE5P3eTqA+9RCWxJdRKPwrBj3DXxt8+XqzzIcA08s4/gB7
         MkC3wPztip0YDAOzE5m+1dHk7KdCSVvD60Ymo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715080530; x=1715685330;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wXHaXKdqUHwPFQAJMHKHEEcPt9R1JT6UoeAkdx1FiUQ=;
        b=kezNj1BIehVtstshLOMMtctjr6g2SailRdes/Z6jBtzG7tIKYRdnPKaK1TJn3KePgh
         J7iuQXCimC/Dgq22+OOJRGh/9de29CQJPaX8rOlcUZk1yfkfNKZO5eAUCUWbsBJ3wv7S
         TwTeegcfwxsKserISvdmLvnl5ZeIRnoa6Fo3GYtejLLDmYKRu/LIUHOlQb2eVcVzLqEr
         3glHLXXYCgZyDOVDZshZ6Lba6vQDWclA09G5PIpEu1+eEnXfBw+b/FJ7bOTjmUKouR3l
         HXL4q4w2HJSRKb3CVp1/pbOXiWvgbYQNDAFRBlRkOPJtBkELSv4nePEWIRqUPGtfFlcG
         INoA==
X-Forwarded-Encrypted: i=1; AJvYcCVMkifxs06FtmQfUM8G8DA7KzQEs42mDVV6XbGOmbB+WK7hTJgzzTSNnoXXVrKq+Xbbn7bzghbwDBUf/SfWAZ7eQdB52J77/k+lwXGCyxc=
X-Gm-Message-State: AOJu0YyMjfx2hcPXj6GSUqpTQXDbn+IINb7AN0/pa4nLbg928yo92Rij
	HUTb5Z6CBkqWdvv4jxmUvFEuN9qj4msHcvjMVHTonRdWoYGRJ48pkfD9EGU8Lsw=
X-Google-Smtp-Source: AGHT+IGEfDP7fiY2wy+u7QVPwRVnfgZKbf0WPVJ5yp1DcSn44Sb5FY9EGhKJ+yzn6ZLbDpYvJ3fvPw==
X-Received: by 2002:a05:600c:3b02:b0:41a:c4fe:b0a5 with SMTP id m2-20020a05600c3b0200b0041ac4feb0a5mr8937623wms.4.1715080530250;
        Tue, 07 May 2024 04:15:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id d10-20020a05600c3aca00b00418e4cc9de7sm22960582wms.7.2024.05.07.04.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 04:15:29 -0700 (PDT)
Date: Tue, 7 May 2024 13:15:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
Mail-Followup-To: Hans de Goede <hdegoede@redhat.com>,
	Maxime Ripard <mripard@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Lennart Poettering <mzxreary@0pointer.de>,
	Robert Mader <robert.mader@collabora.com>,
	Sebastien Bacher <sebastien.bacher@canonical.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Milan Zamazal <mzamazal@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat>
 <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5E0EF3F346
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim,mail-wr1-f54.google.com:rdns,mail-wr1-f54.google.com:helo,dreamwidth.org:url];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.54:from];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.54:from]
X-Rspamd-Action: no action
Message-ID-Hash: FGPDUF4WC5EYLKP7XP4JVERIWVRVNJ55
X-Message-ID-Hash: FGPDUF4WC5EYLKP7XP4JVERIWVRVNJ55
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGPDUF4WC5EYLKP7XP4JVERIWVRVNJ55/>
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

Yeah essentially if you clarify to "set the permissions such that pipewire
can do allocations", then I think that makes sense. And is at the same
level as e.g. drm kms giving compsitors (but _only_ compositors) special
access rights.

> So this reduces the problem to bad apps packaged by regular distributions
> and if any of those misbehave the distros should fix that.
> 
> So I think that for the denial of service side allowing physical
> present users (but not sandboxed apps running as those users) to
> access /dev/dma_heap/* should be ok.
> 
> My bigger worry is if dma_heap (u)dma-bufs can be abused in other
> ways then causing a denial of service.
> 
> I guess that the answer there is that causing other security issues
> should not be possible ?

Well pinned memory exhaustion is a very useful tool to make all kinds of
other kernel issues exploitable. Like if you have that you can weaponize
all kinds of kmalloc error paths (and since it's untracked memory the oom
killer will not get you of these issuees).

I think for the pipewire based desktop it'd be best if you only allow
pipewire to get at an fd for allocating from dma-heaps, kinda like logind
furnishes the kms master fd ... Still has the issue that you can't nuke
these buffers, but that's for another day. But at least from a "limit
attack surface" design pov I think this would be better than just handing
out access to the current user outright. But that's also not the worst
option I guess, as long as snaps/flatpacks only go through the pipewire
service.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
