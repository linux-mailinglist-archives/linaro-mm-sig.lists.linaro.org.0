Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF08BCAJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D762E41155C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E50C8405D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:06:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 2DA123F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 10:51:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=AIjoVpCB;
	dkim=pass header.d=redhat.com header.s=google header.b=MqWF4f5e;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765795905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WkCUCfLiLGct9+NKSop/UGDcclTFONtKAWihXF5F0gs=;
	b=AIjoVpCBzZ1QjjN3/FZTm9AJjMfwcAdY9X3qoztUWlsQ6pbYot2rUzugYXK5XYKUJNL8NG
	woX8iXXpNV+CCSNTkxvpL4L/9utiUsE34rMN/IYZgZWQhSrqRh12QaJ0pRGQavRFGqd/A9
	x+1wYjNe9uEJ4JD/q/ZwRs95UzrBpwk=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-636-sT2p_ndKNyysIe5Ojc6QbA-1; Mon, 15 Dec 2025 05:51:43 -0500
X-MC-Unique: sT2p_ndKNyysIe5Ojc6QbA-1
X-Mimecast-MFC-AGG-ID: sT2p_ndKNyysIe5Ojc6QbA_1765795902
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4779b432aecso17133195e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 02:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765795902; x=1766400702; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WkCUCfLiLGct9+NKSop/UGDcclTFONtKAWihXF5F0gs=;
        b=MqWF4f5e+98BPbc+fOytRRgLZqZAndhqQ5dezS3T7YgCogm4l6KDNhdBP7kC9a+GQC
         eL3gdpFgkhsfq7yW7J+umL5cwv7RfqB4DJom/mRB165botpSUgUAQ51krjyrYNIZDvxU
         tGCbGhvKra/3+TANn+KHo/0mgql5kLxJJg9wgErjAOqy5uPLORms/vERiZwPfSiMtdw3
         OL66gX/ezyEW93AgooSiYKhQCFs7WyzTpBCApRG7W4x0mz8vQN5y02TGQSzkbNvS2jwz
         Vw3xknxkyfF9GrEN8pQWIdzctRsu4uF3YUpFB5ZzNfyhfPBy0jEbIgajSg0Chj+U9uU0
         KUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765795902; x=1766400702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WkCUCfLiLGct9+NKSop/UGDcclTFONtKAWihXF5F0gs=;
        b=Vo89FanxaC6/v3FaREp8Vv5DotQhuNNFm0dHQuuMy3l4Mi0NOJ4iCK2S+3jOrJFlaq
         GebUYW3Fef2vNLjXKXskQS5VMbRI68nAsH2vwf9zaZUSoEAWCIk1k0CO/MhII9kVu4PF
         sBUKjo72trhS7uceCS3dsy8pSCyB8GYAERDDjJNfO/zJNWj1Glnt04UbgoDlWXcxNkyO
         3lGUijDhX0zvzlHWZ8yMgjkIIt1P3da3qM+ATUPx891fPGzdn7VJ7cafjJh4HfO6BIJL
         EbeJRlDlZ8SSJrx6eff4RLFPrbNSKQl44MoYtH2fCRSuK12/D0TPuO0Vrh+K//Qmle/W
         /61A==
X-Forwarded-Encrypted: i=1; AJvYcCWrH28p4oYxp1fCoFX26DEKwyUaFfTkfPOpimaPAMhhtyI0mFGsd1MUVoZA47lfdy0fYaBRoZBPn6WUQ33+@lists.linaro.org
X-Gm-Message-State: AOJu0Yw2yX1YM+j5RJwRF6VyBTB6MOMBR2t9Q6theKmcyaPz+sy3SPD2
	5CJx5zxEsdLnea4nTfAVteSUI3GNxamm0NuADnonQsgQF/Y+d7MolzfQyIRqD/cOySBBQzIFMGX
	23R1dixGE7tJKXyGjCS1nAVpAw6iewEoloL+KiqgrtwnlJHKoA/aP3sEC4jguRKAAULea
X-Gm-Gg: AY/fxX5nLpgmF7j1rlQL+JKPe8CBzFYuuLCgiotiow4n4TX97+4CwkV5g84//EQX3xw
	gc1BV4RAjAhzRHmXLgkx2CbEiZrYgHSfF64xIR8VAhVhgmYJWIwZ2Z3HYA4k8mgtlyXEETaCI2u
	TFNsgczyhIGPAs+LelXhJYFfYRjyKsj5LWILED3lfBJgdAZ5Ii2ZaRSu1B29IfgWGSX7dEbdZOd
	8yNDZGcvpxyOhcv35uQ6Cnj/eLrxQqjzA5o7rbm3McyMqAHvwxrAijehe2OVsuudxHDa5HjJhmB
	WJ4EVCdQCiHYDQe4cX6jf/B4oDmB/mVXurMyUUXf5hvkk/kvtxUVg0qchiyUvOS6S1RIWg1c8ga
	SjuKB
X-Received: by 2002:a05:600c:3151:b0:45d:dc85:c009 with SMTP id 5b1f17b1804b1-47a8f8c0a52mr119367075e9.10.1765795901752;
        Mon, 15 Dec 2025 02:51:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsLOxvt6hxpjORw35OnVP+adHLtMmhH7jm5yhL+wJY2rwByI4ScjvlRVSyfAXmLS6E1u9MfQ==
X-Received: by 2002:a05:600c:3151:b0:45d:dc85:c009 with SMTP id 5b1f17b1804b1-47a8f8c0a52mr119366655e9.10.1765795901232;
        Mon, 15 Dec 2025 02:51:41 -0800 (PST)
Received: from localhost ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f6f3e78sm69652615e9.3.2025.12.15.02.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 02:51:40 -0800 (PST)
Date: Mon, 15 Dec 2025 11:51:38 +0100
From: Maxime Ripard <mripard@redhat.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DNUJIXTWJVSMFMKBMCYPWS4V5XULAEJ7
X-Message-ID-Hash: DNUJIXTWJVSMFMKBMCYPWS4V5XULAEJ7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:44 +0000
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Koenig <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DNUJIXTWJVSMFMKBMCYPWS4V5XULAEJ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1369082751110343343=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2933];
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
	NEURAL_HAM(-0.00)[-0.657];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D762E41155C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============1369082751110343343==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="u7gkqqtkk3esv3ha"
Content-Disposition: inline


--u7gkqqtkk3esv3ha
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: system_heap: account for system heap allocation
 in memcg
MIME-Version: 1.0

Hi TJ,

On Fri, Dec 12, 2025 at 08:25:19AM +0900, T.J. Mercier wrote:
> On Fri, Dec 12, 2025 at 4:31=E2=80=AFAM Eric Chanudet <echanude@redhat.co=
m> wrote:
> >
> > The system dma-buf heap lets userspace allocate buffers from the page
> > allocator. However, these allocations are not accounted for in memcg,
> > allowing processes to escape limits that may be configured.
> >
> > Pass the __GFP_ACCOUNT for our allocations to account them into memcg.
>=20
> We had a discussion just last night in the MM track at LPC about how
> shared memory accounted in memcg is pretty broken. Without a way to
> identify (and possibly transfer) ownership of a shared buffer, this
> makes the accounting of shared memory, and zombie memcg problems
> worse. :\

Are there notes or a report from that discussion anywhere?

The way I see it, the dma-buf heaps *trivial* case is non-existent at
the moment and that's definitely broken. Any application can bypass its
cgroups limits trivially, and that's a pretty big hole in the system.

The shared ownership is indeed broken, but it's not more or less broken
than, say, memfd + udmabuf, and I'm sure plenty of others.

So we really improve the common case, but only make the "advanced"
slightly more broken than it already is.

Would you disagree?

Maxime

--u7gkqqtkk3esv3ha
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaT/oOgAKCRAnX84Zoj2+
dkxfAX4ve8AMEp5rGVxqWdx7mP32EEUlTe7oGqgQsZGk3gdf9G5zzO3162M7qdiD
3jlaGbUBfRHozRNiBmCNTKcExXO6w9Ygjiy0DBe+Vt/PkW0DZjejxbuLLNtgH70W
djcO8jaBRA==
=lq40
-----END PGP SIGNATURE-----

--u7gkqqtkk3esv3ha--


--===============1369082751110343343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1369082751110343343==--

