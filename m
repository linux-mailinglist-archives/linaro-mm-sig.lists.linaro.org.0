Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOJoK14U4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF9D4121BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A36544EB9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id A1420401B0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 09:43:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=RAYzSEBu;
	dkim=pass header.d=redhat.com header.s=google header.b=Rc6+X9O8;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771926222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GW7PmuG1ndcDHaBwm6NFGZKZ71cFJAjRs457FXMTnxM=;
	b=RAYzSEBudNaJRBuL3PlbMRjQX9UnKjMaRmF2dJbz5rbB1kPIY+Kh42caLJ1eQSiJ2m/mmM
	TkgV4OT12+xfF9P9jKyEgewscj+87andWrUHxc/C1Lu3kaPtCwmNX+ypwxU8yx3mPMMWcJ
	fLScCZ/LNxXeQTYcnhHqPPEsJuSxNHg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-609-rSESXpSJOFyj78Zf8D2tDA-1; Tue, 24 Feb 2026 04:43:39 -0500
X-MC-Unique: rSESXpSJOFyj78Zf8D2tDA-1
X-Mimecast-MFC-AGG-ID: rSESXpSJOFyj78Zf8D2tDA_1771926219
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4837107e0a9so38766295e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 01:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771926218; x=1772531018; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GW7PmuG1ndcDHaBwm6NFGZKZ71cFJAjRs457FXMTnxM=;
        b=Rc6+X9O8HbowX+ZG5ghvAXn/W9zfNjP05XKVZ/VuFiwfnvgnJfDF3AWmUhYnMF7iSJ
         ebH7Sct6n6J1kq9UYxP1Z9zTKPRfK35vOnwIahBLOXawEpg28fln+uo2h3IHsZvhGuyw
         +oJ1jCnztJi7ewwU7yHS0AX7lpoe/p5uPpM6FHCerDSQ+nRIi6G0D/Ex5MHo/t4VoLNJ
         D4HCuifftpj5XuFo55+L1uw5uBb9a10nrKpEUw3oCTnIt9NNSkzhWgnZFlCE5vOx8KWQ
         NelfOwcEeNppxptvvqsZw4d19abzkiVs4BhfR+qeJZe2Tqyr87GT01vbqZSxKZof4iur
         UICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926218; x=1772531018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GW7PmuG1ndcDHaBwm6NFGZKZ71cFJAjRs457FXMTnxM=;
        b=bqnxydsqKIFgqEUwZDWo63m6wlcFFGkG9b6E5J/bvTRSqQv3WQ+u5EU8OaDQKNyjae
         1nlrNgKmDxIGyr0Xjw4Wg8TAYcEHQEw11OGkfKdMaHXbiFrI1jgzF8KPaO1VkyGT4hRA
         OyKqO3vIVGOSjrSb1+1XBD1iSwntOs4+Jq9C5DwowY30xu6hWbSxRuIYsKTlC5r3tsfD
         E3N7h00FDyiWLMP10PT0Usoei0VzzVkwzDkeHqDWhr0S523WRK3oqRxIJPHeFgQJz8il
         gzxbvDTEvupUJseKRzjCVN0vQ7KhVhZSTpImGuWTzusAV3Ogf9nACp4wGIiI3rLPt9ph
         nRwA==
X-Forwarded-Encrypted: i=1; AJvYcCVWT5HhHcYO4Q7rsPybCQFvirSi8Dt1xXDLE/cNND/5aGvrKb+vu28hp8Ys4gzM8QXzIJ5G28y3iulkCLq+@lists.linaro.org
X-Gm-Message-State: AOJu0YxOlaV96OhkZ3DyqmPLNnZRbZKS462/VT6VyqM1s1HYiNbVrG38
	T32lAa9Cwx0ak8bRFWECDgrzh1mpgvsrCfUbr83qQaMB6MZYOrUgXLZPAlwrJRxbstjb/4Fqc0K
	ztzd+2PIsS19OzNMsZFRx/Ksry70DcS0AyIoDWroOGUVzPIJpYtbOvwKraUo8DFCccL0I
X-Gm-Gg: AZuq6aJe96bjggJE91I5zr1NulIe+E1ngcyYDYe6ngyndy6TWbxZKOK8QYLZYnFXqiJ
	LHXVTht/dDg+tKBqf8WMSFT6WSkhg+wLYUsvIee26Q4fIcGih+kpKWnhzNcMdpMiHf2DDG+oJhx
	DhHoJXrO8+7Ue2eWA+pF5Sgp5b8dP7AyBq4EkF4JNwlLJmTKdWL1F2v+ZiOQ5lt5tmg0+JR+o2G
	wsql960APbW53LZRdFxC/RsX3bMcC16BMor+Sh9zhGKlnpmPJKdgQUS0oN6sWdtgZHZ1BIkfNiw
	fod84Dgd0wBVeUxP8er6k8QSFZkLQ9125ZnAK4S0w2e//0nFaqeBsw5Gt5nhgdJwu3zhFo75SA=
	=
X-Received: by 2002:a05:600d:8444:20b0:483:afbb:a086 with SMTP id 5b1f17b1804b1-483afbba1e8mr88663325e9.29.1771926218458;
        Tue, 24 Feb 2026 01:43:38 -0800 (PST)
X-Received: by 2002:a05:600d:8444:20b0:483:afbb:a086 with SMTP id 5b1f17b1804b1-483afbba1e8mr88662945e9.29.1771926217928;
        Tue, 24 Feb 2026 01:43:37 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483b88f9584sm14864105e9.12.2026.02.24.01.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:43:37 -0800 (PST)
Date: Tue, 24 Feb 2026 10:43:36 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260224-solemn-spider-of-serendipity-0d8b94@houat>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
 <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com>
MIME-Version: 1.0
In-Reply-To: <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZO42Z7WSLEIN2TJ3ZICFS5JP7LTGZ22Y
X-Message-ID-Hash: ZO42Z7WSLEIN2TJ3ZICFS5JP7LTGZ22Y
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:02 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZO42Z7WSLEIN2TJ3ZICFS5JP7LTGZ22Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5055488373920525626=="
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
	NEURAL_HAM(-0.00)[-0.968];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6CF9D4121BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============5055488373920525626==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="yylhp6jgdgqsuz5g"
Content-Disposition: inline


--yylhp6jgdgqsuz5g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
MIME-Version: 1.0

Hi Christian,

On Fri, Feb 20, 2026 at 10:45:08AM +0100, Christian K=C3=B6nig wrote:
> On 2/20/26 02:14, T.J. Mercier wrote:
> > On Wed, Feb 18, 2026 at 9:15=E2=80=AFAM Eric Chanudet <echanude@redhat.=
com> wrote:
> >=20
> > Hi Eric,
> >=20
> >> An earlier series[1] from Maxime introduced dmem to the cma allocator =
in
> >> an attempt to use it generally for dma-buf. Restart from there and app=
ly
> >> the charge in the narrower context of the CMA dma-buf heap instead.
> >>
> >> In line with introducing cgroup to the system heap[2], this behavior is
> >> enabled based on dma_heap.mem_accounting, disabled by default.
> >>
> >> dmem is chosen for CMA heaps as it allows limits to be set for each
> >> region backing each heap. The charge is only put in the dma-buf heap f=
or
> >> now as it guaranties it can be accounted against a userspace process
> >> that requested the allocation.
> >=20
> > But CMA memory is system memory, and regular (non-CMA) movable
> > allocations can occur out of these CMA areas. So this splits system
> > memory accounting between memcg (from [2]) and dmem. If I want to put
> > a limit on system memory use I have to adjust multiple limits (memcg +
> > dmems) and know how to divide the total between them all.
> >=20
> > How do you envision using this combination of different controllers?
>=20
> Yeah we have this problem pretty much everywhere.
>=20
> There are both use cases where you want to account device allocations
> to memcg and when you don't want that.
>=20
> From what I know at the moment it would be best if the administrator
> could say for each dmem if it should account additionally to memcg or
> not.
>=20
> Using module parameters to enable/disable it globally is just a
> workaround as far as I can see.

That's a pretty good idea! It would indeed be a solution that could
satisfy everyone (I assume?).

Maxime

--yylhp6jgdgqsuz5g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZ1yyAAKCRAnX84Zoj2+
doacAX9OV+qF5kysBD7VpKcr5kj6qlD3tVyHVcMdeBEkYAtzN36MFGozyNSliCjA
/lA6uL0BfiAOlFg02H8ElnCXHrx1z+Noa4YFNUJ9SeZZcTsz4JPvSJFejlvUlYrT
iKqij7gXqQ==
=qfni
-----END PGP SIGNATURE-----

--yylhp6jgdgqsuz5g--


--===============5055488373920525626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5055488373920525626==--

