Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEZLGxHzE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD905C6D42
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 182D23F829
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 06:58:24 +0000 (UTC)
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
	by lists.linaro.org (Postfix) with ESMTPS id 5648740976
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:27:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kde.org header.s=users header.b=L1NlVbYF;
	spf=pass (lists.linaro.org: domain of xaver.hugl@kde.org designates 46.43.1.242 as permitted sender) smtp.mailfrom=xaver.hugl@kde.org;
	dmarc=none
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(Authenticated sender: zamundaaa)
	by letterbox.kde.org (Postfix) with ESMTPSA id 1BBF532BAE3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 16:27:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
	t=1779290853; bh=gcOIwOeeWzpvsrYJGYkpmTBiDOCGGGdp9mfugdpA+HY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=L1NlVbYFBPs6zq1+Mfu/VZGDa7+M0emkcAEoYb5p4lEQ0gqOBc0ZptM0js1aT4gHD
	 mlsd+2PHq+SNHR34+5f+7M01t9KH40ij1NNlnyeVdAdJhuipmQwgi4DOfrVEQeLOVP
	 OVCiQG/4KWKCQkELZbop45+cUlGPZy01vhvAJKHlZje4dPiHfjPLLaboePl8jkh1DP
	 bABT2lA+r2maA4GHYjvN0kMQaMieUz5FUFyvcByEqeiPaQGUnX3nC240cyXVnLoO/7
	 4CtK/KGozy1eDLtymwka1CDfcTkYrHxuSgtby8FW36+evUhNHZXZF6oho9wWeBgS4c
	 QxnKqr2IEodRA==
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-65c24be9e4bso5287459d50.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 08:27:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/3l834DH0Qx0AIeMn2JEA4AgAoNJcfvnuLVaRu6NH7yupOzx+xpEQtUgGB5i6WdGAM4L0+VnVyFvRIX5K6@lists.linaro.org
X-Gm-Message-State: AOJu0YxR5crgfMwnzcsqMXwUfKJ/yIPRR69exsut8B7zwKGQq1UEXi01
	xQeOV8X7pH+CdwPuoKFSXFizz2f+olrRXh5411Ww4ArhiT3lyyGWVSg9LkSATwhuoAC539PuTzB
	BYxuhNKM/Q6K0bKwB77mUV3Giv+YIxXE=
X-Received: by 2002:a05:690e:151b:b0:65d:8f98:6bb4 with SMTP id
 956f58d0204a3-65e2272ee9bmr21554674d50.29.1779290850965; Wed, 20 May 2026
 08:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com> <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com> <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com> <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com> <CAFZQkGz=UJqaJ_eTwKBy1pAg5xL+PLibh7W1vYf7JD7Jrx-LZQ@mail.gmail.com>
 <53edf0b5-e733-4b96-87d7-3307275500c0@amd.com> <CAFZQkGxpPm081Fz8UtDuBA1PKD42+9YDA+cc6fbSpfawXwu9+g@mail.gmail.com>
 <c9fbfdaf-2a58-4423-8dc5-6e29a88f6293@amd.com>
In-Reply-To: <c9fbfdaf-2a58-4423-8dc5-6e29a88f6293@amd.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Wed, 20 May 2026 17:27:20 +0200
X-Gmail-Original-Message-ID: <CAFZQkGyK-ZV-2QuC21sbGu2BELbAicN7EqCAY=bo+WsKXcA+Yg@mail.gmail.com>
X-Gm-Features: AVHnY4KO7S743c3zkoDggQQ_Kb7Ge56iO-xUbB5sb3ZY8i7QvLODzDohK8-8SEc
Message-ID: <CAFZQkGyK-ZV-2QuC21sbGu2BELbAicN7EqCAY=bo+WsKXcA+Yg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: --
X-MailFrom: xaver.hugl@kde.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XMSBSEJWR55CNMJDSVLV3OLJWCJMNLLB
X-Message-ID-Hash: XMSBSEJWR55CNMJDSVLV3OLJWCJMNLLB
X-Mailman-Approved-At: Mon, 25 May 2026 06:57:45 +0000
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XMSBSEJWR55CNMJDSVLV3OLJWCJMNLLB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kde.org:s=users];
	DATE_IN_PAST(1.00)[111];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[kde.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	DKIM_TRACE(0.00)[kde.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.832];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0FD905C6D42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> In general the answer is yes, userspace needs to take care of inserting fences when wait before signal is used and the work can not be submitted to the HW for some reason.
>
> Currently we only have an IOCTL to insert the signaled dummy fence at some timeline sequence, but it should be trivial as well to insert a signaled fence with an error code.
>
> But the compositor needs to be able to handle that case anyway, because it can be that a malicious or just buggy client just never inserts the fence.
>
> So that a device is hot plugged is not different to just a client not inserting the fence in the first place.
A buggy client can always freeze its own surface, it doesn't need
handling beyond cleaning up properly when the client disconnects.
The hotplug case is different, since currently a well-behaved client
can only attempt to signal the point in the syncobj... but the drm
device is gone, so the ioctl will fail and the client's surface is
frozen, even though it did everything right.

So afaict, whatever new ioctl is added for this will need to be
independent of the drm device, or be special cased not to fail when
the device is removed.

> >> One problem is that only syncfile allows for querying such error codes at the moment, we have patches pending to add that to syncobj as well but we lack a compositor with support for that as userspace client.
> > As long as the error case can be detected with an eventfd,
>
> Yeah that's the problem. The eventfd only tells you if the operation is completed (or at least has materialized).
>
> To query the error you would need to ask the underlying syncobj or syncfile directly.
Issuing an additional ioctl after the eventfd fired for this rare case
wouldn't be particularly nice, but also not difficult. If we'd get
that with the eventfd directly, that would be much better though.

> Ah! I think I got the problem now. You basically want to avoid importing the syncobj because when the wrong device goes away you are busted.
Exactly.

> The reason we didn't considered having the IOCTLs on the FD is because if you don't import them and instead keep them around you can run out file descriptors quite quickly.
>
> When you have an use case where you receive an FD from the client and do a one shot conversion to an eventfd that will probably work, but for keeping them in the long run you need some kind of container for the syncobjs, don't you?
Compositors always run with vastly increased fd limits since they have
to handle a lot of fds for dmabufs alone, so keeping the fd around
wouldn't be an issue for us.

> > A device-independent way to create and use syncobj would still be
> > useful to us though, both to simplify the compositor and to improve
> > the software rendering use cases.
>
> Yeah not sure how to cleanly do that. We could have a dummy /dev/dri/rendersync or something like that, but that would be quite a hack.
I think for userspace it would be less of a hack than searching for a
random drm node that can import it. I'd gladly take another solution
as well though, if there is one.

- Xaver
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
