Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FwlC/zyE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DB50B5C6D23
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2DEB404E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 06:58:02 +0000 (UTC)
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
	by lists.linaro.org (Postfix) with ESMTPS id BD7723F6B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 17:09:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kde.org header.s=users header.b=ULomDrS9;
	spf=pass (lists.linaro.org: domain of xaver.hugl@kde.org designates 46.43.1.242 as permitted sender) smtp.mailfrom=xaver.hugl@kde.org;
	dmarc=none
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(Authenticated sender: zamundaaa)
	by letterbox.kde.org (Postfix) with ESMTPSA id 4BE9132B21C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 18:09:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
	t=1779210548; bh=AlJ1/t/6JcBQn3xvZ12SbKOodlIQ8ueQNBgDtOCG+Xk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ULomDrS9UqUbxh3IzJyvC4+q/VmRHFROIzfDMEyYaPejcn1rB1NEXGg3KBPnjmAEh
	 iAPC/67qui6nmReo5x4MtCM9fnKz+0kMn4dTCuab25hyJJLy1Q9YTn4uW9hEH03S0g
	 N1PfoTIr+iaK05XtPwZUOcd8Trz0rhKcZeeMgbhaWTAkM17z8cWoZ1kwXBXXdDd/9T
	 3/iUa7kTM03makIM4O9+zXpGE3wRZFda52gjJGeBD+ck/25Vqhy9I9SqPXGq6wBaf1
	 YkIRxjUw+J/Rz1TYDm3b+nP5PfQrVVIiQNgSwROSkJLhq1zjzkrOxqJLR1vGXyFmZe
	 OatGh1T1ZXZrA==
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-651c7ddf514so3557011d50.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 10:09:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8If5ip7mun4SWnee2j554PUvX8rJyNGf2S2zqVjgKx88I1X1r73LG1p2Bu/fvDfdbk5rDcZlZkm1aiPavT@lists.linaro.org
X-Gm-Message-State: AOJu0Yw1+7P/HIgf8qmHAFrrKQgVw6E6+RIu/lfQ9iB0AknQRRBg9U9F
	UN6/COKYutT2JxEeJVGORsYjhB6JVu6A2XGLEMDwBLE0SB3ocSGNrW1jivEe58zav+SSUPWF8We
	6SRdwVC8uOaeruQ8ptRPjA5wU10Q+12Q=
X-Received: by 2002:a53:c041:0:20b0:658:509a:754f with SMTP id
 956f58d0204a3-65e226bb1acmr16811065d50.18.1779210546198; Tue, 19 May 2026
 10:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com> <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com> <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com> <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
In-Reply-To: <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Tue, 19 May 2026 19:08:54 +0200
X-Gmail-Original-Message-ID: <CAFZQkGz=UJqaJ_eTwKBy1pAg5xL+PLibh7W1vYf7JD7Jrx-LZQ@mail.gmail.com>
X-Gm-Features: AVHnY4K_IfI4nF31sGUOpZQLLhRb2Bvzlif26PEgJHTzyC-9E6RsTuVsRZfgh_U
Message-ID: <CAFZQkGz=UJqaJ_eTwKBy1pAg5xL+PLibh7W1vYf7JD7Jrx-LZQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -
X-MailFrom: xaver.hugl@kde.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5SNBM6XGF65VARWZMHAGDRKBNCPWIB4E
X-Message-ID-Hash: 5SNBM6XGF65VARWZMHAGDRKBNCPWIB4E
X-Mailman-Approved-At: Mon, 25 May 2026 06:57:44 +0000
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5SNBM6XGF65VARWZMHAGDRKBNCPWIB4E/>
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
	DATE_IN_PAST(1.00)[133];
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
	NEURAL_HAM(-0.00)[-0.826];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DB50B5C6D23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> > The part where we get this independent of attached hardware is quite
> > important for us though, since we can't just ignore explicit sync once
> > the device we previously imported the syncobj into is disconnected.
>
> Can you elaborate more on this?

In Wayland, the client is allowed to attach dmabuf and syncobj
independently, they don't have to be from the same device (and the
compositor wouldn't be able to verify the opposite anyways). The
compositor will usually import both into the same drm device, but
especially with compositors that render on multiple devices, that's
not necessarily the case either.

If for example we had a system with one internal GPU and one external
GPU, the client renders on the internal GPU and the compositor uses
the external one. Now when the user yanks the USB C cable, afaiu
- the buffers from the client stay valid
- the syncobj stays valid on the client side
- the syncobj becomes invalid on the compositor side

"invalid" there means either
- the acquire point of the client is marked as signaled, before
rendering on the client side is completed
- the acquire point of the client is never signaled. Since the
compositor waits for the acquire point, the Wayland surface is stuck
forever

Afaik the latter is currently the case. The former wouldn't be much
better though, not when it's preventable.

This is admittedly an edge case, but GPU hotunplug is something we try
to support as well as possible in Plasma, and all the edge cases cause
a lot of problems in combination and are a lot of headaches to handle
(or really work around) in the compositor.
Another edge case is when the client asks the compositor to import the
syncobj, which can fail when a hotunplug is in process, and ends up
disconnecting the client for no fault of either client or compositor.

> >>> 3. It removes the need to translate between syncobjs fds and handles.
> >>
> >> That's a pretty big no-go as well. The differentiation between FDs and handles is completely intentional.
> > Could you expand on why it's needed? For compositors, the handle is
> > just an intermediary thing when translating between file descriptors.
>
> Well what we could do is to add an IOCTL to directly attach an syncobj file descriptor to an eventfd.
That would be nice.

- Xaver
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
