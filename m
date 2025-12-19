Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJYhN2oK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 996DD4116DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA1B343D1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:12:25 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 8159A400F5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 10:25:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="ZCs/X4de";
	dkim=pass header.d=redhat.com header.s=google header.b=H3B4D0YT;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766139949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QjDiJjB7C2v1UtJ+RkaYpL+6MQ9Nkb3DziS0e1v2t2k=;
	b=ZCs/X4dewmXd3k9wDbSoWqziqTEu1zN6oBx5XHIMcEQxnQDvcDJXtfN+Q3gnp9VHRd6xv9
	iU4XOPUqSy+EmV5q4CtA8JA5Tgb1Ej9cHnQZoxjLTd9C0bdLSB7lWo8VHPi76ZwPZDq16r
	uKgzfDxcwQSTy66G7uAagRgY5qvz+wM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-204-IjKk3D2eMCm2co-iIo8aJg-1; Fri, 19 Dec 2025 05:25:47 -0500
X-MC-Unique: IjKk3D2eMCm2co-iIo8aJg-1
X-Mimecast-MFC-AGG-ID: IjKk3D2eMCm2co-iIo8aJg_1766139946
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-47a97b719ccso8604725e9.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 02:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766139946; x=1766744746; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QjDiJjB7C2v1UtJ+RkaYpL+6MQ9Nkb3DziS0e1v2t2k=;
        b=H3B4D0YTc1JjygE3C2jfd6zMZ1x9OQy/enQ1fAP5DniksTVJPYR1mkqOjumWsuezNm
         VjDVrKKfGAjEOQqoQsutH9Y+hnvDJy6hkGEixc2tUaBKuYvVrY4VUOgoH4hZEc7lPhOA
         XaBoF5ZOFFCCzFYFmokxo4T7fuGW24/ZLgE8ZJan8HKhC9FLEU3DQnmZd0iBJv2pHBZB
         q2IdcTbyhxLCdJIrblxp92furl1lKfBTqYiT5iXZKke9S1gdftM2kOpcGphIJRTVsEq4
         tz3/DLv8ZrO33We4781DuUNkFmaR70djfln0evoiteIYFJn0K5qXxh6wS3afgpWKxitt
         tmqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766139946; x=1766744746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QjDiJjB7C2v1UtJ+RkaYpL+6MQ9Nkb3DziS0e1v2t2k=;
        b=vcTbtauwah1whlsfTpXh7j0II5SewUk5MSd+3saRbwUHwv+0/ujFXV5ftRO34OgKUj
         AOpB5RWpEUPKN7mOyWr3Nt/zMK5NARUh7atU+JZSG7wslX4OsOm+tUp8EbadE9hFgfVv
         vHn9lnjAbBCwDajUY+rMna3gk0L9NXvta7SzoXZCIBKQNY8WkPKUMpp0k0jzxIlCvtV/
         PNZXgeAyNWNH75Vi/cIa8UeAjQtW+v/0BCiqJvg1v73PtfIYgvGrgkn5mLnrCmMuSx+b
         XXpZ49xoxMf71+NAfjh/TlogJNS0DyykUzFdR3s3BrkMP+WvUuLMJmT06kc4LHwvPzJg
         S76A==
X-Forwarded-Encrypted: i=1; AJvYcCV2ac4skqffoP+dTYns4M2+Z9ZuQaVHM7SCUJ1BJ6wgcLxIpV1NupsfoRvpiavJ0jL7QPlkAPx9Wy+UcEd/@lists.linaro.org
X-Gm-Message-State: AOJu0YzkjtY0FXadBV/lR7kFsHtj1aQ9CGI4UcmBk/4Asv5fala3fAom
	BkcbDGfjUUtcsbe3ALygN4gugc5pl3azUPjcivk8mMV5GMoiz8laFeGH4gCR9+o5T+dLLdHgQ6M
	OdvRcfNPexSKzt3r4I+6T8BrlONgEm9t7or8As4TEZG6mKekwYERFRneh9SMgAguMJHbs
X-Gm-Gg: AY/fxX6P6ij0LXPhT5+/VIBsiMUKHxDYvapzEpKhXnauds5lJgnb7qky5QW9DoZ40ca
	tf26j34wEMuWr+F+Q/1mSPBYIyECVt2Dz0ZFQvQB0wsRhSGh11mBQ5neK+TSMSCBPd54/pDm8tW
	FoHnjMwOae6d1pnrOrhtsibIjzRXOqYiuG4LWMKPuU8YMbzGRl1RDuZ5uH9EwmCv8LrFKss54d9
	enUVtMztUOlp0ud8f28XPhTOEi/0mS6rBAdJKHf0GrYi1l2Q1b6kNqxgylv+UB2M5QCtPOMIknD
	BCL3/71ChvxLYsx8PCOg4lryaLBXe59DjvTzTDuzmJMeBcRC2BiDwzoA12NBJA==
X-Received: by 2002:a05:600c:5248:b0:47a:8154:33e3 with SMTP id 5b1f17b1804b1-47d1958958dmr21132315e9.28.1766139945699;
        Fri, 19 Dec 2025 02:25:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFagDmA6mPBXBEAFzxJYNGFzP2GgCwlY1oy9ixI0iy9zInEz22wLjFWwqDhC49txteMc6NoXg==
X-Received: by 2002:a05:600c:5248:b0:47a:8154:33e3 with SMTP id 5b1f17b1804b1-47d1958958dmr21131995e9.28.1766139945121;
        Fri, 19 Dec 2025 02:25:45 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4e91sm37190635e9.13.2025.12.19.02.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 02:25:44 -0800 (PST)
Date: Fri, 19 Dec 2025 11:25:43 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251219-large-daffy-monkey-74665d@houat>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
 <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
 <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
MIME-Version: 1.0
In-Reply-To: <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YMKEMLAJ2QRZ756AIYGZSIL3HCJPR77R
X-Message-ID-Hash: YMKEMLAJ2QRZ756AIYGZSIL3HCJPR77R
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:03 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YMKEMLAJ2QRZ756AIYGZSIL3HCJPR77R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5179465274022103460=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2837];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.655];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 996DD4116DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============5179465274022103460==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="5d5u624ftgk7q5qf"
Content-Disposition: inline


--5d5u624ftgk7q5qf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: system_heap: account for system heap allocation
 in memcg
MIME-Version: 1.0

On Mon, Dec 15, 2025 at 03:53:22PM +0100, Christian K=C3=B6nig wrote:
> On 12/15/25 14:59, Maxime Ripard wrote:
> > On Mon, Dec 15, 2025 at 02:30:47PM +0100, Christian K=C3=B6nig wrote:
> >> On 12/15/25 11:51, Maxime Ripard wrote:
> >>> Hi TJ,
> >>>
> >>> On Fri, Dec 12, 2025 at 08:25:19AM +0900, T.J. Mercier wrote:
> >>>> On Fri, Dec 12, 2025 at 4:31=E2=80=AFAM Eric Chanudet <echanude@redh=
at.com> wrote:
> >>>>>
> >>>>> The system dma-buf heap lets userspace allocate buffers from the pa=
ge
> >>>>> allocator. However, these allocations are not accounted for in memc=
g,
> >>>>> allowing processes to escape limits that may be configured.
> >>>>>
> >>>>> Pass the __GFP_ACCOUNT for our allocations to account them into mem=
cg.
> >>>>
> >>>> We had a discussion just last night in the MM track at LPC about how
> >>>> shared memory accounted in memcg is pretty broken. Without a way to
> >>>> identify (and possibly transfer) ownership of a shared buffer, this
> >>>> makes the accounting of shared memory, and zombie memcg problems
> >>>> worse. :\
> >>>
> >>> Are there notes or a report from that discussion anywhere?
> >>>
> >>> The way I see it, the dma-buf heaps *trivial* case is non-existent at
> >>> the moment and that's definitely broken. Any application can bypass i=
ts
> >>> cgroups limits trivially, and that's a pretty big hole in the system.
> >>
> >> Well, that is just the tip of the iceberg.
> >>
> >> Pretty much all driver interfaces doesn't account to memcg at the
> >> moment, all the way from alsa, over GPUs (both TTM and SHM-GEM) to
> >> V4L2.
> >=20
> > Yes, I know, and step 1 of the plan we discussed earlier this year is to
> > fix the heaps.
> >=20
> >>> The shared ownership is indeed broken, but it's not more or less brok=
en
> >>> than, say, memfd + udmabuf, and I'm sure plenty of others.
> >>>
> >>> So we really improve the common case, but only make the "advanced"
> >>> slightly more broken than it already is.
> >>>
> >>> Would you disagree?
> >>
> >> I strongly disagree. As far as I can see there is a huge chance we
> >> break existing use cases with that.
> >=20
> > Which ones? And what about the ones that are already broken?
>=20
> Well everybody that expects that driver resources are *not* accounted to =
memcg.

Which is a thing only because these buffers have never been accounted
for in the first place. So I guess the conclusion is that we shouldn't
even try to do memory accounting, because someone somewhere might not
expect that one of its application would take too much RAM in the
system?

> >> There has been some work on TTM by Dave but I still haven't found time
> >> to wrap my head around all possible side effects such a change can
> >> have.
> >>
> >> The fundamental problem is that neither memcg nor the classic resource
> >> tracking (e.g. the OOM killer) has a good understanding of shared
> >> resources.
> >=20
> > And yet heap allocations don't necessarily have to be shared. But they
> > all have to be allocated.
> >=20
> >> For example you can use memfd to basically kill any process in the
> >> system because the OOM killer can't identify the process which holds
> >> the reference to the memory in question. And that is a *MUCH* bigger
> >> problem than just inaccurate memcg accounting.
> >=20
> > When you frame it like that, sure. Also, you can use the system heap to
> > DoS any process in the system. I'm not saying that what you're concerned
> > about isn't an issue, but let's not brush off other people legitimate
> > issues as well.
>=20
> Completely agree, but we should prioritize.
>=20
> That driver allocated memory is not memcg accounted is actually uAPI,
> e.g. that is not something which can easily change.
>=20
> While fixing the OOM killer looks perfectly doable and will then most
> likely also show a better path how to fix the memcg accounting.

I don't necessarily disagree, but we don't necessarily have the same
priorities either. Your use-cases are probably quite different from
mine, and that's ok. But that's precisely why all these discussions
should be made on the ML when possible, or at least have some notes when
a discussion has happened at a conference or something.

So far, my whole experience with this topic, despite being the only one
(afaik) sending patches about this for the last 1.5y, is that everytime
some work on this is done the answer is "oh but you shouldn't have
worked on it because we completely changed our mind", and that's pretty
frustrating.

Maxime

--5d5u624ftgk7q5qf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaUUoJwAKCRAnX84Zoj2+
dj4lAX0Yy0is1eVfn9GJZ8tPnOe91CbMkIdAor1dgBxh5RGL/e9IAXnnFFQzaX12
w2/x3FEBfA/Q0bKegplzRU4jhv1EueYV2Vj5bqPF2sIKW/Eff7kOIT0+y8L+DyLg
WOULpERarw==
=8moi
-----END PGP SIGNATURE-----

--5d5u624ftgk7q5qf--


--===============5179465274022103460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5179465274022103460==--

