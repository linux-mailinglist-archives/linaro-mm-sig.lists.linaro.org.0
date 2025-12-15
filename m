Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4K0QIEoJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1507241157A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2552C406A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:07:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id BD4F03F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 13:59:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=drNCRSPh;
	dkim=pass header.d=redhat.com header.s=google header.b=bY4XE1TV;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765807151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fxDTKwhMmaT8yFIgWPPRxzSP91DdXIWwn+nIL+l50K8=;
	b=drNCRSPhqsoP6Mt8tr/W00IbL+Pgf1t11DA3EGBtTsVEAUf5P3n2UbmRohSu87bD2uZTQP
	EVJgUxPLKe0YaOv1G3wepGKLsr9B5EsKmB9nTdfR4NXQgbPDfDsz1KBZp4tSlXC4k/2MaU
	7/eixA9p7wjrlSAdpUjsCLdwtUD7QtE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-279-wXClsNAHP0mQeVHx5--VAA-1; Mon, 15 Dec 2025 08:59:07 -0500
X-MC-Unique: wXClsNAHP0mQeVHx5--VAA-1
X-Mimecast-MFC-AGG-ID: wXClsNAHP0mQeVHx5--VAA_1765807146
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-477a1e2b372so35652115e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 05:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765807146; x=1766411946; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fxDTKwhMmaT8yFIgWPPRxzSP91DdXIWwn+nIL+l50K8=;
        b=bY4XE1TVlDVgc5opIi9EdvamXR7pWxCwiqfaFh61lZDXrDfqywD5ckDF1RvDowHSft
         1Crm6zOW2qMx077BmWGE6p57jOqaBimvSb8/jZGKqOBhg3KiUsUu5Q0ZQiRla4hQfcFT
         xPxysO5ZOWfBfypsDPdOOyBaAu+N+JUGwlnAUoGdI0FxbImLqyXuSxnEdroNtDbmslKe
         Ix7A+vH3/KsKlnqda9nytq54upoz3mg3MZrW6aInGM1hK+rWh+WQ876zvexjjfPF69CP
         GgDzE7wVRSH0wFh7wl8k7CMdyh7fRxVJtPM0W2VE354GA+1xoMXkVGID517iCaMajL98
         U//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765807146; x=1766411946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxDTKwhMmaT8yFIgWPPRxzSP91DdXIWwn+nIL+l50K8=;
        b=YMc5ppUtWkNJPg7X19kkMvK/Ga7Z1iyHVhJ3shH8YJDo0C580LVSC0eBRJ7RVemjSo
         XY1511modWpJ84L/dzQJUuTjF0r2sDG4sGPFZpRmgRDkX5e8B6WdC0gP6aIqMplalZ6w
         cXXIdewptdpM6l3/3fQ9f22QWsjHku9hgQUsOG6OPtwLbhAJyKRFbWLmrAYqWr915u0Q
         3mxiZz5B9s6d5UHYl9zMN9gSzZHzIObLOmXi9wHbh1CSiZa3BWoDYmWytfha1fRR0KYa
         Ihv+SJx9IncNho8386AAUzJgDkXRMaOoT9Rb1nNf1T7XO83ytgXIWu8yJryuZ9B34itK
         71xw==
X-Forwarded-Encrypted: i=1; AJvYcCV5pU4uHXkQXdIAGlvjJWWTTQP1ur56/dfu1QC4fMoUIR88wz8j5tXD7ovhPtUMDVeCMnxkdx3iYNn0IhDF@lists.linaro.org
X-Gm-Message-State: AOJu0YzGafRqch0Um7m0IvC88t65u762jQ8Csvt0+kRlwZCDgSdZQ3zK
	gKeNWvKLdBYx1RGW7Eyt9mZUj22fnvfu5uNNDPYTcRs5BsGKGWVYDaqH/DiBmOJRg+N93UP0XmK
	Bbi/rT/gpaC0NP6IhvSCkhQQnz+v8Od0rncI8MGYgo1pKDI2dY3/BZHZ2ZykxEBq7S/6P
X-Gm-Gg: AY/fxX5eFc+lAteqeE9LbmELCn9rrY0oyrMitCT+yTkp5h/TN57oAyZnllml2RX3E9o
	TnMfaTkr6DGYKjenHqnqP1B2fszfcyButPr/5Bo27Qah451JeqwBDN7OiTOgpcUx4K4JLqQvnWh
	jBy30dJXVfcwxe+lErJ44Nwh3TAku9EzAYLV03JbsPT2h9wwFYcdt5A5Z5JoKvF0/zVnPhVNIXs
	VdJYBkKxpdEdVcH49SraMUmie62kqCeSiB+CyjkV86NyabhkdLjT80VnF6eHCb6j+5O+jfDgKG3
	RGkQABZqyoDOTwxrWgJXGwDqKuQiVWnku/CfBZ1l96Ku1bX7M2giIuK9ND2gcRXjpCsJc51+M3o
	Jp2+W
X-Received: by 2002:a05:600c:a40e:b0:477:b734:8c52 with SMTP id 5b1f17b1804b1-47a900bd6cfmr88610715e9.14.1765807146411;
        Mon, 15 Dec 2025 05:59:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqFocdgwq3FCiLwNZCPP3yGh7X+/+A4X5ZrVtcOGVh8JXh/FPlhQAyGrD/wsm7r0PlrPxysw==
X-Received: by 2002:a05:600c:a40e:b0:477:b734:8c52 with SMTP id 5b1f17b1804b1-47a900bd6cfmr88610465e9.14.1765807145881;
        Mon, 15 Dec 2025 05:59:05 -0800 (PST)
Received: from localhost ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4a3e9fsm187336645e9.6.2025.12.15.05.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 05:59:05 -0800 (PST)
Date: Mon, 15 Dec 2025 14:59:04 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
MIME-Version: 1.0
In-Reply-To: <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SRF2AO7AYNGJETYO2GT5YISJJAWLJTUQ
X-Message-ID-Hash: SRF2AO7AYNGJETYO2GT5YISJJAWLJTUQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:46 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SRF2AO7AYNGJETYO2GT5YISJJAWLJTUQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2820919144412133738=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2930];
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
	NEURAL_HAM(-0.00)[-0.660];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1507241157A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============2820919144412133738==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="l7ljucmjyhr7i7d4"
Content-Disposition: inline


--l7ljucmjyhr7i7d4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: system_heap: account for system heap allocation
 in memcg
MIME-Version: 1.0

On Mon, Dec 15, 2025 at 02:30:47PM +0100, Christian K=C3=B6nig wrote:
> On 12/15/25 11:51, Maxime Ripard wrote:
> > Hi TJ,
> >=20
> > On Fri, Dec 12, 2025 at 08:25:19AM +0900, T.J. Mercier wrote:
> >> On Fri, Dec 12, 2025 at 4:31=E2=80=AFAM Eric Chanudet <echanude@redhat=
=2Ecom> wrote:
> >>>
> >>> The system dma-buf heap lets userspace allocate buffers from the page
> >>> allocator. However, these allocations are not accounted for in memcg,
> >>> allowing processes to escape limits that may be configured.
> >>>
> >>> Pass the __GFP_ACCOUNT for our allocations to account them into memcg.
> >>
> >> We had a discussion just last night in the MM track at LPC about how
> >> shared memory accounted in memcg is pretty broken. Without a way to
> >> identify (and possibly transfer) ownership of a shared buffer, this
> >> makes the accounting of shared memory, and zombie memcg problems
> >> worse. :\
> >=20
> > Are there notes or a report from that discussion anywhere?
> >=20
> > The way I see it, the dma-buf heaps *trivial* case is non-existent at
> > the moment and that's definitely broken. Any application can bypass its
> > cgroups limits trivially, and that's a pretty big hole in the system.
>=20
> Well, that is just the tip of the iceberg.
>=20
> Pretty much all driver interfaces doesn't account to memcg at the
> moment, all the way from alsa, over GPUs (both TTM and SHM-GEM) to
> V4L2.

Yes, I know, and step 1 of the plan we discussed earlier this year is to
fix the heaps.

> > The shared ownership is indeed broken, but it's not more or less broken
> > than, say, memfd + udmabuf, and I'm sure plenty of others.
> >=20
> > So we really improve the common case, but only make the "advanced"
> > slightly more broken than it already is.
> >=20
> > Would you disagree?
>=20
> I strongly disagree. As far as I can see there is a huge chance we
> break existing use cases with that.

Which ones? And what about the ones that are already broken?

> There has been some work on TTM by Dave but I still haven't found time
> to wrap my head around all possible side effects such a change can
> have.
>=20
> The fundamental problem is that neither memcg nor the classic resource
> tracking (e.g. the OOM killer) has a good understanding of shared
> resources.

And yet heap allocations don't necessarily have to be shared. But they
all have to be allocated.

> For example you can use memfd to basically kill any process in the
> system because the OOM killer can't identify the process which holds
> the reference to the memory in question. And that is a *MUCH* bigger
> problem than just inaccurate memcg accounting.

When you frame it like that, sure. Also, you can use the system heap to
DoS any process in the system. I'm not saying that what you're concerned
about isn't an issue, but let's not brush off other people legitimate
issues as well.

Maxime

--l7ljucmjyhr7i7d4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaUAUIwAKCRAnX84Zoj2+
duttAX9Ga4fqCYlX2dwZgwnc6nPNr0N4H4lEcTNLVs1FO6VC/tdfQXgym9Jnci7z
b5tpPZkBf06sCKJuANIMHhKZwJ4dsNb9bC0X9JuS9CoEhy2fKPraCO3Vf1oezx0e
uJhMcKjuFg==
=SrQ0
-----END PGP SIGNATURE-----

--l7ljucmjyhr7i7d4--


--===============2820919144412133738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2820919144412133738==--

