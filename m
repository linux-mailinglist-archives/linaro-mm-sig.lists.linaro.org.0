Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BrBETUf6mntuQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 15:31:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DC7452F24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 15:31:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3ABDD404A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 13:31:31 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lists.linaro.org (Postfix) with ESMTPS id 09F914013A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 13:31:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20251104.gappssmtp.com header.s=20251104 header.b=CkpQeIg1;
	dmarc=pass (policy=none) header.from=ndufresne.ca;
	spf=pass (lists.linaro.org: domain of nicolas@ndufresne.ca designates 209.85.210.49 as permitted sender) smtp.mailfrom=nicolas@ndufresne.ca
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7dca00c1591so2033144a34.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 06:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1776951086; x=1777555886; darn=lists.linaro.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=OkIYMUDB7SvQNczi+a/z9LNo3qE9So2rbHE3TpVf25k=;
        b=CkpQeIg1bdB79PDfiW/32XG2G8wtuRK4/01zy/+NS4q7KXmcO3lwuZwhx3QEmQznO6
         yK+x9as7PuFfySCXFunyoepZ4ZD7BSmVZBGoglf7/W1rI9AVzgGQ7aEGSbE5vY86YNQu
         YxKQeJKB3Dr1T88N94UL6gHzsK0U2ybq3WswFaYXFOzXIsZHKGozhNuAznidUFS8v3bi
         UNOQLks63cR9qMnyKXnKluOhpp7IRk1xwZzO8IlHtg+DttVThb1oaerVK8P6UmJuQ6Ti
         /FZulKHyN3gtrbrGlxDZSSgfmZVRwjNd4YDMTq9B+nApq5RupZ3PutlwrK6qZU+dzVbm
         QiRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776951086; x=1777555886;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OkIYMUDB7SvQNczi+a/z9LNo3qE9So2rbHE3TpVf25k=;
        b=IJTT8IQbuvxmpB6HsIPZ8DqZKnQJ/o/VEXtKbYfhxwyCU415RMmlvNT1O8VhgEQ1uT
         qLjk4P9azOUXU4AJe5sgxdlaVGc1hdbQwYYPeHX75lnIfayKL+bExTrPVM/X+92ue3My
         p5lRwHfWZswWjIbUlzUIGJl0ao8wFJvw4jKNFWUyUmTNec7GRnfkAZOwbUtxhbFl8VzK
         SX/DREI22Vma9LQKz61JSIvP4/zx3qfU9QoGc5JiA1YewnEQWE4kwXlUtPYTMXiUkjCH
         yPe0kLeI9eYMsCc54h6M5PxUtQqC3HrtJ7HEgkQ9L4ngvpVC8CnK5TXVqw8hUP2ZU13Q
         ssAg==
X-Forwarded-Encrypted: i=1; AFNElJ95/CHQtaMZfzYlfxuSsjplSQqbMK7JyPUxMe3loxaD9ZEWtTsSUDuHvL7EE9JApqqggn90w8lhHf9c5Qlz@lists.linaro.org
X-Gm-Message-State: AOJu0YzrRCx7zwCp7yx2ULnkXWUS1a2TSw/WjwQS5przICwheSgFRNFJ
	J/Oj9+TBD39znY6rwtHwLENZ3gXu3KXwfn/IKUJLRPnUMZatiEemwjFzzmMTjqScE1w=
X-Gm-Gg: AeBDiesAMwHsysX48cjleeBeuG0dNN7yrfpwCNTtUFhkAc6CB2ofduUCidb9+QLy+B+
	DxeQ4e7fO2Pnpf7716LPBNzcFhKB+QwINy5iM547KIi2cJBvvVn8yvgRzOkPetsx7irNRsePwGR
	m7bU4XIQ5vCvgspK/AgKtMItdOhdnlAUQNPE+Bajmn5inryhhz9QxNJlVkmYSiLEkl1WebSl5Gx
	R3L0yFXGOgJcwtqY7ISwHbQ+h4l4uW8c3HjZZDBuOqmb5/NUxnekKM7OTtiFjMqo5jrs3PSWkir
	PehXYjK/qlIxuMYGhl2k1+p/KNnzjQBAdqDbGadwtLElXrBaVAVhlBJMl9+2bDynn3fZK6bzNQd
	A5lKDR8xBWP5quExxtwnahGb3qXrPbCdCeuJmMlK0HBzzUzV5ciZxjShRci/Uo02OyPEFJ3MH0N
	Owyo6UBvAof5pgTnxNDLHNgVm+cQSOemGED4F9u/0y3dpLRuETJg==
X-Received: by 2002:a05:6830:67d5:b0:7d7:d615:3040 with SMTP id 46e09a7af769-7dc951a8f7amr17141856a34.17.1776951085943;
        Thu, 23 Apr 2026 06:31:25 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::5ac? ([2606:6d00:15:e06b::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac462d9sm161750556d6.7.2026.04.23.06.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 06:31:25 -0700 (PDT)
Message-ID: <89390648a5ed37ccb61731d54b6241cfc6058882.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, "Kasireddy, Vivek"
	 <vivek.kasireddy@intel.com>
Date: Thu, 23 Apr 2026 09:31:24 -0400
In-Reply-To: <CABXGCsM8T4e8kaaO_bauHnN0yE5cxwkkcN+eAJWE8hnJ8RdSRw@mail.gmail.com>
References: <20260331061657.79983-1-mikhail.v.gavrilov@gmail.com>
	 <IA0PR11MB718531C51736C57114D6DC2CF850A@IA0PR11MB7185.namprd11.prod.outlook.com>
	 <CABXGCsM8T4e8kaaO_bauHnN0yE5cxwkkcN+eAJWE8hnJ8RdSRw@mail.gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-Spamd-Bar: ------
Message-ID-Hash: 3VUTFGAJN6GB2QTCHGLIARBYIVLJHKDE
X-Message-ID-Hash: 3VUTFGAJN6GB2QTCHGLIARBYIVLJHKDE
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "kraxel@redhat.com" <kraxel@redhat.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3VUTFGAJN6GB2QTCHGLIARBYIVLJHKDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2569472426216641828=="
X-Spamd-Result: default: False [-0.01 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ndufresne-ca.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_TRACE(0.00)[ndufresne-ca.20251104.gappssmtp.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	MAILSPIKE_FAIL(0.00)[44.210.186.118:server fail];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.924];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: C9DC7452F24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============2569472426216641828==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Upe9IeD/YcP+xQYdAbXn"


--=-Upe9IeD/YcP+xQYdAbXn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 23 avril 2026 =C3=A0 16:49 +0500, Mikhail Gavrilov a =C3=A9crit=C2=
=A0:
> On Wed, Apr 1, 2026 at 6:15=E2=80=AFAM Kasireddy, Vivek
> <vivek.kasireddy@intel.com> wrote:
> >=20
> > Acked-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > Will push this one to drm-misc-next soon.
> >=20
> > Thanks,
> > Vivek
>=20
> Hi Vivek,
>=20
> I see the patch landed in drm-misc-next (504e2b4ab97a, tagged
> drm-misc-next-2026-04-20), which targets 7.2.
>=20
> Since the patch has a Fixes: tag and Cc: stable, would it be
> possible to also cherry-pick it into drm-misc-next-fixes so it
> makes the 7.1 merge window that's closing soon?

That would cause the same patch to exist with two different hash, which is
generally causing trouble down the pipeline.

Nicolas

>=20
> The bug is reproducible on current mainline and affects users
> with CONFIG_DMA_API_DEBUG_SG enabled.

--=-Upe9IeD/YcP+xQYdAbXn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaeofLAAKCRDZQZRRKWBy
9LE6AP4zbpIjsamlcu/G6Lqh82xunsoqtFZgRGnace73ZbfDFAEA6PEngKC7M3Yo
K0RGNiwAl4iugWAP62doSTdmh9OX8Ac=
=JOLV
-----END PGP SIGNATURE-----

--=-Upe9IeD/YcP+xQYdAbXn--

--===============2569472426216641828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2569472426216641828==--
