Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6yJYKdA7VmrR1wAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 15:38:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E87D7553F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 15:38:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=gF2r9lcr;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 200CB4097A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:38:23 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by lists.linaro.org (Postfix) with ESMTPS id F123B3F735
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 13:38:19 +0000 (UTC)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-73770fd1b65so332715137.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 06:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784036299; cv=none;
        d=google.com; s=arc-20260327;
        b=HAIKJkHDaq5kJdTnPAWKTSSFR+fxAkY+YuKa3DS6Ur0asXKZfMX+tmToPGmNsh1oge
         OFx3SZiYAKQPQTYCkElqwmJjdEEGIn6yZBBBAjAEca/YbhpAIlg027KOnu6+3hMRmVoW
         TaHsRf21+v4lSbphfELlxGDJJh86BrbdLDgK0r7KD0nEVZ4exRN3qAvOK/xcKvZTauKo
         9Ml1IgiwsBhXWYWNz3ubthbmBlrvC1e0xvjP/s5odmcqx5rMt6tB3zUg3wnxoMoCpkIh
         1KZnDFx23gEj/5g4YVN8apPt3YOVqI9cE7ZSo6Y+O9nH/yNf0J5RUYeXMQxvLAxH97ma
         Uu0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+yVoZZisszpSLmfLdAUvwAS484Eh2rr1NVxc27+kKiA=;
        fh=s8iPWKpa4q8cXP78cwgsXYbdax17ZSLdylAsp1/JlxM=;
        b=kUdNxf0um9yDVYKyr+BINATk5NtavpFgHK4AKrBHY/zV5fSXC7izIbioBB6hmgRW2u
         pBnGVdn2ZM6kv7iNsvP7Js6lJt3aYTZI0ilycfYaJhf8ZdtdTiAoRoE2PHyCAfmgg2Wz
         Vx14by+U2JmkXP8MsEhbOJzEXBEkdPkmNASl7W4AoHht1RbztTPN6hm55dAuQFOFDjdR
         AO0/2rc8mV9COUz3CNFP4rWsB836zrB8CZNJB6o3/Q0+T8TsD3Ph1VRL59eYBJTeposm
         djgME7BMK67687CGMZMT0/NNYimvfwK6mjhIPpAg6SnzR/bAF+oOsMfLZriqg6eaq6yX
         UfLw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784036299; x=1784641099; darn=lists.linaro.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+yVoZZisszpSLmfLdAUvwAS484Eh2rr1NVxc27+kKiA=;
        b=gF2r9lcriHcgt4SznWDp8HvmIhmKFrO2VK7QWQDQRvT0qRVEoM/6e+/x/Fs+XltTfi
         /dhSNH8Q1f6hgjRbHKLBcXtfgF7trJhEbjkEDdoOGqUQHN2jb8M72Yiuey/NcUr/9T+/
         sHUANaP2pGN08wacXBaEgShkNHHQlBnYo+cPDwb8nC1xJyxqXLKoDP3RUbrhs94PlD8q
         8cCx75DJyzLbV28qRdk3MLuoDo6hOxjqkjuACiUatG0ZdadWDtELVUATGNynR4FqZK0z
         d3bYIR3ti4HvH5fQ6EOy2JT1P3XEy2wmxNWI5RNIDevKRGvUQiHPRwLNvrzn2CQG7AzS
         qUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784036299; x=1784641099;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=+yVoZZisszpSLmfLdAUvwAS484Eh2rr1NVxc27+kKiA=;
        b=NLFdJwhi0XcS2eQbOfBrEoV/PMTCxYm0IDEtrRVDDonZ07m1kKnyR+T8iXOPv2rre5
         4ZSD79tiOlrejg0VFP9zzOEwLn3xtK2NcjNhJ+1WGvl3oCC6BKePS96y/DDQN+jwKE0I
         JoGKwfhF6pfm0vcmPZxph03cFPc47fBgyL3NSpVpEdE3RiIqaJTmaFhkszvCyKABA16N
         KCAafp0EQgkBMOHTF3755pigorguk5scywrlg76UxYVxoxpni9qPdPcDFWkw6A6nMGOE
         GXV6Md8VFVhca/jzEzArafazCqHTfIABDF3NzcmhSGnI1+2JaMT1Z51lWAm4ShEUMqaN
         pfWw==
X-Forwarded-Encrypted: i=1; AHgh+Ro1Ku+bfuo9W57ILxZlkDQCnaBvLSLA4ZGHlFWRYLLiJTGWSsEG9Knkb0L6Z5taDCLl+Tjn5AYlrnGNQtrd@lists.linaro.org
X-Gm-Message-State: AOJu0YwDXAaWMP9i68k3zO/FdOoy2P8axmPVQVLpM3CK8C11Wj1fGb3c
	2TOsjbaOIdSrJj3pfz1QwmOfRiSANN91sMnweuXmpYis5yRrf5KhmAKvW4rF7vNTMs9Hcf3BH8g
	qRm167LaEYLN2B70sKK0U4mUyo2iA+Ec=
X-Gm-Gg: AfdE7cn88B22zAsLVxOkeFh6olyZMqKO+C22/uR2V/NzkpesI+l1QHVezb8Aq36da8p
	X0UVgcxLOxKgwXD8L9+cZSMFQixPaEOiIDPYXgkYevEgfeJGcGrN0sPmD//7f8m77pMNIrk3MBb
	LUQVU0wMnlFrifax7+NB4JRC33vNnaYn7SEi0W+6xp5GhWAZC40i37jnNBVI8aSXCDoGisfc4ff
	UkRBrkPGIFmfse24/qSS1vl5gLKKk/Xu62ONqNwUJRN4SYBWXqxFQkmglOeVcQd1bv7N751
X-Received: by 2002:a05:6102:162b:b0:728:4383:c831 with SMTP id
 ada2fe7eead31-74533c0db8amr7920334137.10.1784036299352; Tue, 14 Jul 2026
 06:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
 <20260714114654.3885457-1-shoubaineng@gmail.com> <20260714114654.3885457-2-shoubaineng@gmail.com>
 <20260714141359.7758575d@pumpkin>
In-Reply-To: <20260714141359.7758575d@pumpkin>
From: =?UTF-8?B?5a+/5p+P6IO9?= <shoubaineng@gmail.com>
Date: Tue, 14 Jul 2026 21:38:07 +0800
X-Gm-Features: AUfX_mx1gzgtwPtEVIakIcvDj32vKgHlWBxFDDJMPc3hmyJ9ZkcCZUxyrzActqo
Message-ID: <CAGCp47zPkd6MWcMpxobphJp6giufpnJL46iFQMt9p76gb7OtKA@mail.gmail.com>
To: David Laight <david.laight.linux@gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: VSWWQZH6DM6MVLO6MT6TAOWU3GX7XVO7
X-Message-ID-Hash: VSWWQZH6DM6MVLO6MT6TAOWU3GX7XVO7
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "T . J . Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, "Andrew F . Davis" <afd@ti.com>, Srinivas Kandagatla <srini@kernel.org>, stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VSWWQZH6DM6MVLO6MT6TAOWU3GX7XVO7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8784151796778974014=="
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
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E87D7553F3

--===============8784151796778974014==
Content-Type: multipart/alternative; boundary="000000000000e3af9c06569251b4"

--000000000000e3af9c06569251b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

Thanks for the feedback.

The concern is not just about the EFAULT return =E2=80=94 it's about the ra=
ce
window between fd_install() and copy_to_user().  Once fd_install()
returns, the fd is immediately observable by other threads in the same
process (via /proc/self/fd, SCM_RIGHTS, etc.), even before
copy_to_user() has a chance to fail.  The triggering condition is a
deliberate mprotect() flip, not a corrupted heap.

The fix itself is small and follows the standard kernel idiom:
get_unused_fd_flags() reserves the fd without publishing it, so the
window between reservation and install is entirely under kernel control.

Baineng

David Laight <david.laight.linux@gmail.com> =E4=BA=8E2026=E5=B9=B47=E6=9C=
=8814=E6=97=A5=E5=91=A8=E4=BA=8C 21:14=E5=86=99=E9=81=93=EF=BC=9A

> On Tue, 14 Jul 2026 19:46:53 +0800
> Baineng Shou <shoubaineng@gmail.com> wrote:
>
> > DMA_HEAP_IOCTL_ALLOC allocates a dma-buf and installs an fd into the
> > caller's fd table via dma_buf_fd() -> fd_install() before
> > dma_heap_ioctl() copies the result back to userspace.  If the trailing
> > copy_to_user() fails, userspace never learns the fd number, but the
> > fd (and the underlying dma-buf reference) are already visible to
> > other threads in the same process and are leaked for the lifetime of
> > the process.
> >
> > The obvious "close it on the failure path" fix is unsafe: once
> > fd_install() has run, another thread can already dup() the fd, send
> > it via SCM_RIGHTS, or close() it and let its number be reused, so a
> > subsequent close_fd() from the ioctl path can operate on an unrelated
> > file.  This was pointed out by Christian K=C3=B6nig on v1 [1].
> ...
>
> My 2c:
>
> The other option is just to leave it as a 'problem for user space'.
> No reasonable program is going to handle the EFAULT return by doing
> anything other than exiting.
> Even getting an EFAULT is really an indication that the application
> is already in a real mess - most likely with a badly corrupted heap.
>
> Anything else leaves error recovery code in the kernel that is pretty
> much never executed and open to a variety of bugs.
> While the recovery here is probably ok, there are some sockopt calls
> where it is all more complicated.
>
>         David
>

--000000000000e3af9c06569251b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi David,<br><br>Thanks for the feedback.<br><br>The conce=
rn is not just about the EFAULT return =E2=80=94 it&#39;s about the race<br=
>window between fd_install() and copy_to_user().=C2=A0 Once fd_install()<br=
>returns, the fd is immediately observable by other threads in the same<br>=
process (via /proc/self/fd, SCM_RIGHTS, etc.), even before<br>copy_to_user(=
) has a chance to fail.=C2=A0 The triggering condition is a<br>deliberate m=
protect() flip, not a corrupted heap.<br><br>The fix itself is small and fo=
llows the standard kernel idiom:<br>get_unused_fd_flags() reserves the fd w=
ithout publishing it, so the<br>window between reservation and install is e=
ntirely under kernel control.<br><br>Baineng</div><br><div class=3D"gmail_q=
uote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">David Lai=
ght &lt;<a href=3D"mailto:david.laight.linux@gmail.com">david.laight.linux@=
gmail.com</a>&gt; =E4=BA=8E2026=E5=B9=B47=E6=9C=8814=E6=97=A5=E5=91=A8=E4=
=BA=8C 21:14=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">On Tue, 14 Jul 2026 19:46:53 +0800<br>
Baineng Shou &lt;<a href=3D"mailto:shoubaineng@gmail.com" target=3D"_blank"=
>shoubaineng@gmail.com</a>&gt; wrote:<br>
<br>
&gt; DMA_HEAP_IOCTL_ALLOC allocates a dma-buf and installs an fd into the<b=
r>
&gt; caller&#39;s fd table via dma_buf_fd() -&gt; fd_install() before<br>
&gt; dma_heap_ioctl() copies the result back to userspace.=C2=A0 If the tra=
iling<br>
&gt; copy_to_user() fails, userspace never learns the fd number, but the<br=
>
&gt; fd (and the underlying dma-buf reference) are already visible to<br>
&gt; other threads in the same process and are leaked for the lifetime of<b=
r>
&gt; the process.<br>
&gt; <br>
&gt; The obvious &quot;close it on the failure path&quot; fix is unsafe: on=
ce<br>
&gt; fd_install() has run, another thread can already dup() the fd, send<br=
>
&gt; it via SCM_RIGHTS, or close() it and let its number be reused, so a<br=
>
&gt; subsequent close_fd() from the ioctl path can operate on an unrelated<=
br>
&gt; file.=C2=A0 This was pointed out by Christian K=C3=B6nig on v1 [1].<br=
>
...<br>
<br>
My 2c:<br>
<br>
The other option is just to leave it as a &#39;problem for user space&#39;.=
<br>
No reasonable program is going to handle the EFAULT return by doing<br>
anything other than exiting.<br>
Even getting an EFAULT is really an indication that the application<br>
is already in a real mess - most likely with a badly corrupted heap.<br>
<br>
Anything else leaves error recovery code in the kernel that is pretty<br>
much never executed and open to a variety of bugs.<br>
While the recovery here is probably ok, there are some sockopt calls<br>
where it is all more complicated.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 David<br>
</blockquote></div>

--000000000000e3af9c06569251b4--

--===============8784151796778974014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8784151796778974014==--
