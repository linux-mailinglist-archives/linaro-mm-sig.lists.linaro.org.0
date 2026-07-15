Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3ykiJcfqVmqzCwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jul 2026 04:04:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E056375A014
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jul 2026 04:04:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="EDq/Yd+9";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FC2F409AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jul 2026 02:04:53 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by lists.linaro.org (Postfix) with ESMTPS id 9B3A240495
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jul 2026 02:04:50 +0000 (UTC)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-7377dde7bc6so119453137.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 19:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784081090; cv=none;
        d=google.com; s=arc-20260327;
        b=UfODe968IBCm+nwCF/7RqCaHDaqXLDItRYvp++wpHTL0b8CscuqDubEIONJYVcyHW3
         MxPcnwWas8uDuHkxAlcEm7ya0PsSXnCcTBklQCjr8qmi+1/LhDhfRpmm18r+lhoUviNd
         99WbWoFQa14CEl/kI0y5JVv7fzucwt20FJtMhpworuVPC9aGMekN1yFg/JRyO/MbFSJy
         r2CqTKs2ON+4htY4huI+aCW07yxo69Hx91nJC/D/Eg7+WH+6Rz5BvaJY5q0V5WYbKCr4
         whZkW5v4PX+vFqxOwUrGH4QJAVSiBwHXQ3PW4ROq52dmxlLPh2viNmePAP3KK37u2dsi
         Nfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rLEIKhpuef/ug54pd7MBDY/WtzBaRgNJWaxjolHYxgc=;
        fh=/HBOQdaqj16S6v8cY4E0OPbSqZU3gvarQ1FHbQiRmCk=;
        b=R6X9Ktu7/jW8DCH/R7bT7F8Od5/UqT2LJ41jFWS0n0dQKOgtSnX/kkXRuQd90OQ6Pv
         vriFPwnmP0CXx4s6yx8EKxaiP7zOXFj/bZSafeB6kK6mnYdtmar8w2cBhwkUlj7rsV69
         dqzdLbSCStizSSGP4LdEtagJS2H7efZA5cJw32bqOTHoRBq8vJ3AWlqOzJdTATfP4e/5
         99wbHiPxVITesfs57E1S8vR4oK0cK/hNCUkcjuZ80qngSx6zD+q2uQcA5aVEIqdLFAqu
         j2FYzugKotLC1qXdanJlSUiwLxprtqPHLTL9Yyi/DScvcWkBgPaQPB6HFR1yQ15mk6l5
         kN8A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784081090; x=1784685890; darn=lists.linaro.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rLEIKhpuef/ug54pd7MBDY/WtzBaRgNJWaxjolHYxgc=;
        b=EDq/Yd+9Qx9w6yuK4ndhyRy1PrjtTUiywWNAVRVyCgmK3vLmO8xE9zGtver7GFZPjn
         MH90ANyTwdu8YMpZDecmxXic6avKTiDxAKlkOivJMoY4E5UJECEfv0vTn+GZcbEve9t0
         N4NNfpkLds3UighT0kMj5e3bqsBVTF7Hr0+SuZ6XmbYiGwQgrPJJngugjNKnkj02BZdF
         GbwgeIGovbP0hK8TUu9aMdH1uAqCqwqEKD5DY9VEO/Njjk2otawNSOi09JMadrnaa5Jc
         nh02tLts5XTNX6QzgVc1tKBRe/cv9bC5ugTWkrMZNYUM917OOU1Wus8a0AI24EchYYAW
         SKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784081090; x=1784685890;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=rLEIKhpuef/ug54pd7MBDY/WtzBaRgNJWaxjolHYxgc=;
        b=k/hkxhDpfWGBGvMPPIGaLXIi5N8TsClaqnnn/eBKAbnzkB8skElD0jlrUilkyz+fZD
         nDd+Zq0OCzuiF6s5aFBf3LdvETQJt//W9+fcHL/QhQzLkhHhst7BZLzLNLBEdC2hn6De
         /jWD1dVRM5t8od44ng21xuS3SeCeZ9VHbaaPJoUn7Aq9Mc0q63DcWF5dR7MqfWg0a/3q
         Hn4lvq87Ed8doOFTy1SCZIXnUYsrZv+h6Ms8uNpisqf7VqxUmf9cRUQZucrgeshPTPGv
         8mnfTX+rY4mbaHAoMt/IUhiAhRDn0QNi9hIMuUR6Q0tVnHVnwlzgkrzWaLG+ZZfKe04W
         Go2Q==
X-Forwarded-Encrypted: i=1; AHgh+Rr1BxJJCrUUL4rP06v5rJnvc1Obp/cujbavCwEb6V4TmVNFaWDaTvXUULwLbbDUGQj6ZyW4YrUR9rzaTZ1F@lists.linaro.org
X-Gm-Message-State: AOJu0YxrWOLqatyyXGQCxjmabJzIRYMJbhzv2IFx3rk8v+a2WILSW47Q
	Dz0If07Qm602kFvFhBOY1Oze7N5lxK6Rh9ByFu46id8LnBrcIVRBXwl7r7qR11YH7j6QL1h4YmH
	O1tqWZBbLCRwDjVyJyVQ3By3p3lpvFD4=
X-Gm-Gg: AfdE7cnOchSOZiqQPSITc72dUd66hV2nYX8hAAtcdRgYchblGfdiZLMq4xZ1iNFjpEZ
	GcZARAkEo8rq3iKjjt1OFXCnwIqL4dHuQYufO6ZenSYq2XymMsmH9jGW1CQYwvfgez2f8WvPfCI
	vUSBguYSjQ41AL3W/H8m+Yi0d2mU3meUMMfXZHbSIRow2ZVZN7P/GOWLoVARFtrRuOns8CRXegi
	5C4AJs26MBYZDGDORh2HiCB2SdxNbbEcJvaou7es3rnZmqBteYhzX3HcGYb/UsLuCOFIhfJ
X-Received: by 2002:a05:6102:6304:10b0:736:e29f:168d with SMTP id
 ada2fe7eead31-7450caa107amr8868372137.16.1784081089868; Tue, 14 Jul 2026
 19:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
 <20260714114654.3885457-1-shoubaineng@gmail.com> <20260714114654.3885457-2-shoubaineng@gmail.com>
 <20260714141359.7758575d@pumpkin> <CAGCp47zPkd6MWcMpxobphJp6giufpnJL46iFQMt9p76gb7OtKA@mail.gmail.com>
 <20260714153319.07b2b1e1@pumpkin>
In-Reply-To: <20260714153319.07b2b1e1@pumpkin>
From: =?UTF-8?B?5a+/5p+P6IO9?= <shoubaineng@gmail.com>
Date: Wed, 15 Jul 2026 10:04:38 +0800
X-Gm-Features: AUfX_mwfNxpJG_fVC7UlhQprBnyA-zPjc7BWgAEELjI2vNsVGklcYzWirBtOafs
Message-ID: <CAGCp47wsjwstEebFcKSv+Hox0LJo=oYgt5n-2xfKWgq4WLZK1Q@mail.gmail.com>
To: David Laight <david.laight.linux@gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: SIMSZGMZNGJIL266HTBYWMSHRXPRAKVT
X-Message-ID-Hash: SIMSZGMZNGJIL266HTBYWMSHRXPRAKVT
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "T . J . Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, "Andrew F . Davis" <afd@ti.com>, Srinivas Kandagatla <srini@kernel.org>, stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SIMSZGMZNGJIL266HTBYWMSHRXPRAKVT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4727580743088300029=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E056375A014

--===============4727580743088300029==
Content-Type: multipart/alternative; boundary="0000000000009cb5ec06569cbff0"

--0000000000009cb5ec06569cbff0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David

The rollback here is the simplest possible case (put_unused_fd +
dma_buf_put), not the complex sockopt scenario you describe.

Baineng

David Laight <david.laight.linux@gmail.com> =E4=BA=8E2026=E5=B9=B47=E6=9C=
=8814=E6=97=A5=E5=91=A8=E4=BA=8C 22:33=E5=86=99=E9=81=93=EF=BC=9A

> On Tue, 14 Jul 2026 21:38:07 +0800
> =E5=AF=BF=E6=9F=8F=E8=83=BD <shoubaineng@gmail.com> wrote:
>
> > Hi David,
> >
> > Thanks for the feedback.
> >
> > The concern is not just about the EFAULT return =E2=80=94 it's about th=
e race
> > window between fd_install() and copy_to_user().  Once fd_install()
> > returns, the fd is immediately observable by other threads in the same
> > process (via /proc/self/fd, SCM_RIGHTS, etc.), even before
> > copy_to_user() has a chance to fail.  The triggering condition is a
> > deliberate mprotect() flip, not a corrupted heap.
>
> That is what makes doing the close wrong.
> But that is a program aggressively trying to hit the timing window,
> not a normal program that has managed to pass an invalid pointer.
> The most likely reason for a real program passing an invalid pointer
> is a corrupted heap (assuming the stupid coding errors are fixed).
>
> It is really no different from the sockopt code that receives
> SCM_RIGHTS messages.
> In that case once you've removed the FILE from the socket (or similar)
> you really don't want to have to put it back because the write to the
> sockopt buffer or length field fails.
> The chance of correctly reverting the kernel state is small - and won't
> be tested.
>
>         David
>
> >
> > The fix itself is small and follows the standard kernel idiom:
> > get_unused_fd_flags() reserves the fd without publishing it, so the
> > window between reservation and install is entirely under kernel control=
.
> >
> > Baineng
> >
> > David Laight <david.laight.linux@gmail.com> =E4=BA=8E2026=E5=B9=B47=E6=
=9C=8814=E6=97=A5=E5=91=A8=E4=BA=8C 21:14=E5=86=99=E9=81=93=EF=BC=9A
> >
> > > On Tue, 14 Jul 2026 19:46:53 +0800
> > > Baineng Shou <shoubaineng@gmail.com> wrote:
> > >
> > > > DMA_HEAP_IOCTL_ALLOC allocates a dma-buf and installs an fd into th=
e
> > > > caller's fd table via dma_buf_fd() -> fd_install() before
> > > > dma_heap_ioctl() copies the result back to userspace.  If the
> trailing
> > > > copy_to_user() fails, userspace never learns the fd number, but the
> > > > fd (and the underlying dma-buf reference) are already visible to
> > > > other threads in the same process and are leaked for the lifetime o=
f
> > > > the process.
> > > >
> > > > The obvious "close it on the failure path" fix is unsafe: once
> > > > fd_install() has run, another thread can already dup() the fd, send
> > > > it via SCM_RIGHTS, or close() it and let its number be reused, so a
> > > > subsequent close_fd() from the ioctl path can operate on an unrelat=
ed
> > > > file.  This was pointed out by Christian K=C3=B6nig on v1 [1].
> > > ...
> > >
> > > My 2c:
> > >
> > > The other option is just to leave it as a 'problem for user space'.
> > > No reasonable program is going to handle the EFAULT return by doing
> > > anything other than exiting.
> > > Even getting an EFAULT is really an indication that the application
> > > is already in a real mess - most likely with a badly corrupted heap.
> > >
> > > Anything else leaves error recovery code in the kernel that is pretty
> > > much never executed and open to a variety of bugs.
> > > While the recovery here is probably ok, there are some sockopt calls
> > > where it is all more complicated.
> > >
> > >         David
> > >
>
>

--0000000000009cb5ec06569cbff0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0David</div><div dir=3D"ltr"><br>T=
he rollback here is the simplest possible case (put_unused_fd +<br>dma_buf_=
put), not the complex sockopt scenario you describe.</div><div><br></div>Ba=
ineng<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">David Laight &lt;<a href=3D"mailto:david.laight.linux@gmail.com" target=
=3D"_blank">david.laight.linux@gmail.com</a>&gt; =E4=BA=8E2026=E5=B9=B47=E6=
=9C=8814=E6=97=A5=E5=91=A8=E4=BA=8C 22:33=E5=86=99=E9=81=93=EF=BC=9A<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, 14 Jul 2026 21=
:38:07 +0800<br>
=E5=AF=BF=E6=9F=8F=E8=83=BD &lt;<a href=3D"mailto:shoubaineng@gmail.com" ta=
rget=3D"_blank">shoubaineng@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Hi David,<br>
&gt; <br>
&gt; Thanks for the feedback.<br>
&gt; <br>
&gt; The concern is not just about the EFAULT return =E2=80=94 it&#39;s abo=
ut the race<br>
&gt; window between fd_install() and copy_to_user().=C2=A0 Once fd_install(=
)<br>
&gt; returns, the fd is immediately observable by other threads in the same=
<br>
&gt; process (via /proc/self/fd, SCM_RIGHTS, etc.), even before<br>
&gt; copy_to_user() has a chance to fail.=C2=A0 The triggering condition is=
 a<br>
&gt; deliberate mprotect() flip, not a corrupted heap.<br>
<br>
That is what makes doing the close wrong.<br>
But that is a program aggressively trying to hit the timing window,<br>
not a normal program that has managed to pass an invalid pointer.<br>
The most likely reason for a real program passing an invalid pointer<br>
is a corrupted heap (assuming the stupid coding errors are fixed).<br>
<br>
It is really no different from the sockopt code that receives<br>
SCM_RIGHTS messages.<br>
In that case once you&#39;ve removed the FILE from the socket (or similar)<=
br>
you really don&#39;t want to have to put it back because the write to the<b=
r>
sockopt buffer or length field fails.<br>
The chance of correctly reverting the kernel state is small - and won&#39;t=
<br>
be tested.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 David<br>
<br>
&gt; <br>
&gt; The fix itself is small and follows the standard kernel idiom:<br>
&gt; get_unused_fd_flags() reserves the fd without publishing it, so the<br=
>
&gt; window between reservation and install is entirely under kernel contro=
l.<br>
&gt; <br>
&gt; Baineng<br>
&gt; <br>
&gt; David Laight &lt;<a href=3D"mailto:david.laight.linux@gmail.com" targe=
t=3D"_blank">david.laight.linux@gmail.com</a>&gt; =E4=BA=8E2026=E5=B9=B47=
=E6=9C=8814=E6=97=A5=E5=91=A8=E4=BA=8C 21:14=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt; <br>
&gt; &gt; On Tue, 14 Jul 2026 19:46:53 +0800<br>
&gt; &gt; Baineng Shou &lt;<a href=3D"mailto:shoubaineng@gmail.com" target=
=3D"_blank">shoubaineng@gmail.com</a>&gt; wrote:<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; DMA_HEAP_IOCTL_ALLOC allocates a dma-buf and installs an fd =
into the<br>
&gt; &gt; &gt; caller&#39;s fd table via dma_buf_fd() -&gt; fd_install() be=
fore<br>
&gt; &gt; &gt; dma_heap_ioctl() copies the result back to userspace.=C2=A0 =
If the trailing<br>
&gt; &gt; &gt; copy_to_user() fails, userspace never learns the fd number, =
but the<br>
&gt; &gt; &gt; fd (and the underlying dma-buf reference) are already visibl=
e to<br>
&gt; &gt; &gt; other threads in the same process and are leaked for the lif=
etime of<br>
&gt; &gt; &gt; the process.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The obvious &quot;close it on the failure path&quot; fix is =
unsafe: once<br>
&gt; &gt; &gt; fd_install() has run, another thread can already dup() the f=
d, send<br>
&gt; &gt; &gt; it via SCM_RIGHTS, or close() it and let its number be reuse=
d, so a<br>
&gt; &gt; &gt; subsequent close_fd() from the ioctl path can operate on an =
unrelated<br>
&gt; &gt; &gt; file.=C2=A0 This was pointed out by Christian K=C3=B6nig on =
v1 [1].=C2=A0 <br>
&gt; &gt; ...<br>
&gt; &gt;<br>
&gt; &gt; My 2c:<br>
&gt; &gt;<br>
&gt; &gt; The other option is just to leave it as a &#39;problem for user s=
pace&#39;.<br>
&gt; &gt; No reasonable program is going to handle the EFAULT return by doi=
ng<br>
&gt; &gt; anything other than exiting.<br>
&gt; &gt; Even getting an EFAULT is really an indication that the applicati=
on<br>
&gt; &gt; is already in a real mess - most likely with a badly corrupted he=
ap.<br>
&gt; &gt;<br>
&gt; &gt; Anything else leaves error recovery code in the kernel that is pr=
etty<br>
&gt; &gt; much never executed and open to a variety of bugs.<br>
&gt; &gt; While the recovery here is probably ok, there are some sockopt ca=
lls<br>
&gt; &gt; where it is all more complicated.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0David<br>
&gt; &gt;=C2=A0 <br>
<br>
</blockquote></div>
</div></div>

--0000000000009cb5ec06569cbff0--

--===============4727580743088300029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4727580743088300029==--
