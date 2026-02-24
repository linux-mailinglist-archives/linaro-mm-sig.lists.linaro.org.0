Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNu5NlYU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDAA4121B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B041E44E6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id B1773401B0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 09:42:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=BRhKFkEx;
	dkim=pass header.d=redhat.com header.s=google header.b=Ux6ZUKp3;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771926138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qFXRiyap5BrRiey8XcKRTLPgUy6tRvIlHZrT7O+t8rM=;
	b=BRhKFkExYKj6R0HKj7oKoUJf0R2+gJUjYe5xdq/9T08sy0oUZ62PkErKKb7w0MVcONXSY8
	VomH6qzN7+XGeCT6usAtwTRd6tYmEfX+QQcXY33p67uWpCiS886JuyLhC5pa1RYA0YmGr+
	Y+pNnIpfGwffrJWanoK7KQpS2y46/d8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-499-37aMTUpWPdKG4KdvwVfgqA-1; Tue, 24 Feb 2026 04:42:15 -0500
X-MC-Unique: 37aMTUpWPdKG4KdvwVfgqA-1
X-Mimecast-MFC-AGG-ID: 37aMTUpWPdKG4KdvwVfgqA_1771926134
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4837c597cd5so4307955e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 01:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771926134; x=1772530934; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qFXRiyap5BrRiey8XcKRTLPgUy6tRvIlHZrT7O+t8rM=;
        b=Ux6ZUKp3m2xDkX/nHty5Qlc3LGDVfAtxG3enQgr+geO2m7ISfNxJw4lxLv3CPUoXyk
         eD7wvcW3pFQS+32YYpCl4yzYySUdACB1nTk668aba91iiWFckIB1LYR0ayY5BRLjCTjU
         UlKcQi0pyj5JrEDj+pv39mW4MsgHpFpTcTODiAHqcmc7FPnFqMa+phyv/CMnObDOwB1v
         Sk4K6U2dgUCibFhfNvek9TIgbqUIIX6VjNA74kC0zVdT6eE0m+RZYGfuKrvrB8LkWp27
         rRw/ejJfbeElxTPBTYaODx3exThQeaSEshtcYknxHvDWhYOip9quBvjeivE2o/iPyQN2
         8OJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926134; x=1772530934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFXRiyap5BrRiey8XcKRTLPgUy6tRvIlHZrT7O+t8rM=;
        b=q9YskWoyF54ME0onwL4HLSNX7EPLEOPHksPOM37kfzO0Vp7P4zM+exdK76vlKmubpB
         rm9GuPrzOAk7WU/m3JAc383UoPFAFHYVqN4ILSlyzD3KpJYzrnAggvdyhhPIHqgWoaTz
         Kv1r/KPzKRPavB53AG9GPu3bKg6VHqW7OmP0W7RomUqcOeG7wtIdB03Fc4qS7KTELB5+
         ugAkXRAX3auuKbSbNMszUqmjdK2+/4X8yKvEPE8VGXsAf54JnepgIM4synpgslwE6DWy
         4xrUiCIH/3628ggOi7pxkGmZfpojxm8j5JK6PnIn+0IjI3iLaUS2t8e15HgVOKvU45Df
         EWmA==
X-Forwarded-Encrypted: i=1; AJvYcCV4ooRzyNopQ5z2l1w5igdhQ68a71C8OTA9jU/MselguWHpLsn9qNZ41lY13iIa1+Cmo4EcB8NoGwtr9riW@lists.linaro.org
X-Gm-Message-State: AOJu0Yw7E5EUy4YsimQuKv8fIA5g0DYKAo2OqSTREmDEq9Ae/7h8HgWZ
	mjGU2TM3oCX3CgEYKiLga3JLmxWpRRuhjAHdpA/KrGTHh5btaeS83h5LnxXF60RIfYECynjeawr
	HD4RZBn70yQ0NZpiydtNoQyY+WALLwKhZUB4PF0DBes6QOR9xTnvEBtbo1p/s0o4x4ZVS
X-Gm-Gg: AZuq6aJCkS928XpJ3Bpm8DsIwfdIt9ifstCzrbwFzMjvKXf0cBI53OvOVXMvcX+6L4C
	Hs3AgqbhRDAIi54W5KVdX1B5BABBs6WWxFWJJ2TQD4AmM/B1dyf6V9PHQvH6l3H6Z+/KTyOFVlY
	6y7rTIyUwtQ7rb4oK6lIhAKzYY3dJAxtgmUXtz9Ys9+lSRSP4NYvVYYrEEOTYfxR55xJ9H+zikE
	ClnMJhgjUBGWCv7sgGiLUF4dT2Ec0gI/FujgKpUxd6/wTGVX+7p3LMgt0irQNbSxL0yo8GWxvUd
	Eed8EpXrTtzTxrAWw6Ykcet9EVmZzoAIT8U1zvCd7hrpO3ynnpTDoMEOcZwcha8S4VjoPn4E2w=
	=
X-Received: by 2002:a05:600c:3e05:b0:483:78e1:784 with SMTP id 5b1f17b1804b1-483a95aaeb9mr191397935e9.4.1771926134365;
        Tue, 24 Feb 2026 01:42:14 -0800 (PST)
X-Received: by 2002:a05:600c:3e05:b0:483:78e1:784 with SMTP id 5b1f17b1804b1-483a95aaeb9mr191397375e9.4.1771926133815;
        Tue, 24 Feb 2026 01:42:13 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9b7fddbsm253006935e9.8.2026.02.24.01.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:42:12 -0800 (PST)
Date: Tue, 24 Feb 2026 10:42:12 +0100
From: Maxime Ripard <mripard@redhat.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20260224-terrestrial-jaguarundi-of-influence-e3ccf1@houat>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P6LFQWJJJ4A4ARKD23ALCRQZGGJDDRHK
X-Message-ID-Hash: P6LFQWJJJ4A4ARKD23ALCRQZGGJDDRHK
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:02 +0000
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P6LFQWJJJ4A4ARKD23ALCRQZGGJDDRHK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8177430992119585513=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1231];
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
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 9DDAA4121B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============8177430992119585513==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="zryjcv333aysdxbr"
Content-Disposition: inline


--zryjcv333aysdxbr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
MIME-Version: 1.0

Hi TJ,

On Thu, Feb 19, 2026 at 05:14:42PM -0800, T.J. Mercier wrote:
> On Wed, Feb 18, 2026 at 9:15=E2=80=AFAM Eric Chanudet <echanude@redhat.co=
m> wrote:
> > An earlier series[1] from Maxime introduced dmem to the cma allocator in
> > an attempt to use it generally for dma-buf. Restart from there and apply
> > the charge in the narrower context of the CMA dma-buf heap instead.
> >
> > In line with introducing cgroup to the system heap[2], this behavior is
> > enabled based on dma_heap.mem_accounting, disabled by default.
> >
> > dmem is chosen for CMA heaps as it allows limits to be set for each
> > region backing each heap. The charge is only put in the dma-buf heap for
> > now as it guaranties it can be accounted against a userspace process
> > that requested the allocation.
>=20
> But CMA memory is system memory, and regular (non-CMA) movable
> allocations can occur out of these CMA areas. So this splits system
> memory accounting between memcg (from [2]) and dmem. If I want to put
> a limit on system memory use I have to adjust multiple limits (memcg +
> dmems) and know how to divide the total between them all.
>=20
> How do you envision using this combination of different controllers?

I feel like it can be argued either way, and I don't really see a way
out of supporting both.

Like you pointed out, CMA can indeed be seen as system memory, but it's
also a limited pool that you might want to place arbitrary limits on
since, unlike system memory, it can't be reclaimed, will not trigger the
OOM killer, and more generally is a much more sparse resource.

Maxime

--zryjcv333aysdxbr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZ1ycwAKCRAnX84Zoj2+
dm9VAX9JuCh6S7GJf/wUUY2RPjeN5/Hr5cmqHNDJmY78HFfnpCUW4mFYqDeZaoeP
aK99/MkBf0bRStrApFYWF5JgHSK2oeVEEzJ9MxforcaAQ09KVjoG4RckJH53I57/
PQy+P4+J5A==
=fLNZ
-----END PGP SIGNATURE-----

--zryjcv333aysdxbr--


--===============8177430992119585513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8177430992119585513==--

