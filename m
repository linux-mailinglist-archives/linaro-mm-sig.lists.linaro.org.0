Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FABEB95CFB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 14:19:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 313E63F6E9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 12:19:58 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id 527303F6E9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 12:19:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Kvrm183E;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.221.50 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3ee12a63af1so2437787f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 05:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758629994; x=1759234794; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sTK3npgW5FQLE4nPFWDBCNYEm3feIUUETDGkLbnmceI=;
        b=Kvrm183Ev6o91OM0frpI5V6SC+M6/ir8xiehcxuIEBoR+mVyPGV1ANd1w6SwonzHAg
         CpqLiFEa+/4HnD0VSvSg29LcPYPjGHpKt2W8/8MtM4D/pJNoG57l813I/TCaQ/DQuJM7
         0+qalLrTgiXwOq8mg3NfthBKP+wn1NeTgO6C+x0vFhZR07oxOUhH/xBV/cTy37S4o2EY
         S0uzuBBT2pnI/7ImGd8cdN1grEsfFTI+/+Dc2n7OwUU2VN86NQRNomqpf8lBP1gTRG4M
         r3OpFCr8tf9A7g0uh/hc3yYJNOm6Zz54rVgG8w9G0Bp+1EW0+9tQD5rpk8ysQuc92QSR
         PnCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758629994; x=1759234794;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sTK3npgW5FQLE4nPFWDBCNYEm3feIUUETDGkLbnmceI=;
        b=rfhqbh8dO2AOPE1RgA5/dmwUfZJ/9eoYA7kX9nQt8BzPjCaozQ3MqV10nd085AbJE5
         nTjfOzgUElTJ+yg0MEENfneqZt5qhkPSDvQF28a5ETIhEXeBf8hzzcPICAlj///kL+V2
         Umf/4NwmcByjA/KymdvdMOJoyAyUpKYCeDmZNAGjF9+7ovVLT9aGjfUG+4EgH6iFboIz
         q5DfpFboVsvSawhT5GDBOCSmB3bA1ciE0OptkXicWQPWMJsF93RrhHzpWKHG9L6pfQlk
         A2MK1lwLbfB5IXC1EtlvsPkL/1vVKtudCPpKCnZ8GIJIJjsJqT33CHGXG5cYBO0PEAeE
         yE2A==
X-Forwarded-Encrypted: i=1; AJvYcCUQMePLVHDeKuIrZCyiilEnpcwdAnB8odk2y4eytJu3cDuE8mXVcYj50UoKeyU8dpxkaQC/bhpi/Wy0reRs@lists.linaro.org
X-Gm-Message-State: AOJu0YxQxe2q6dlP8Za4hu8no9UVaEdw21IRGJ/mQoDT75qErBphIQ/y
	DOf0jPwEzl8gRFpbixnSvMeesR1HnJ+DgU5ffPCA7vHNE6hna2UPiGcEolxzUlnW2NRyiw==
X-Gm-Gg: ASbGnctMYjRBi+NaHR6YeSqcMaXmUY7gfSCd6rcN19qvFB66D0XTN5SUx57u5j1Kv5o
	kM8HJt2Lz7LCkUpjRzr5sO5Pr4XS2Upiwl1wRDxYbAWZzp7CkjBnYClp5UdPTDoceUolq2e3GBX
	VtAP0iaBJJGaI/uZuK7xz08B3C9BXhvWSdtt2hHRgwHXJohbiSRdLMEIMf/WwXMhlE8Bp3jI/7h
	SZonrwfAp1UyU5lu18idEE3Di1Jld9ydFMMGORd8Fki25qV/Tu1wODPuB05Yyy684/RncvSqkuu
	FzkHg/SvTZMBUUVABOD89yIuYT91rIJGt1C1Seq3rWRKZaOCBj0bc8AV0TSvErvyPUqHF+ja7ZZ
	eXWyWajTd3nGLQW64qLW+4luj6XlQ
X-Google-Smtp-Source: AGHT+IHzh4QmoPQ01FP6OX2MtxPxTNk8wndU9qAYqgeeBa3Ms/9nlpcl+WJEjK2427UHhz9Vf1Arow==
X-Received: by 2002:a5d:5f49:0:b0:3ea:80ec:854c with SMTP id ffacd0b85a97d-405c5ccc9fcmr1639265f8f.19.1758629994203;
        Tue, 23 Sep 2025 05:19:54 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3f61703b206sm13621550f8f.6.2025.09.23.05.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 05:19:53 -0700 (PDT)
Date: Tue, 23 Sep 2025 15:19:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aNKQZqWwWu_8WesG@stanley.mountain>
References: <aNKBIcpF6kZRG6Mg@stanley.mountain>
 <7bb48401-ed99-4263-addd-ec1462d68168@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7bb48401-ed99-4263-addd-ec1462d68168@amd.com>
X-Rspamd-Queue-Id: 527303F6E9
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.50:from];
	RCPT_COUNT_SEVEN(0.00)[8];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GZ3ZBVPEUN3SUDL2J2IPTBRE5MIMBG6L
X-Message-ID-Hash: GZ3ZBVPEUN3SUDL2J2IPTBRE5MIMBG6L
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona.vetter@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix reference count leak in dma_buf_poll_add_cb()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZ3ZBVPEUN3SUDL2J2IPTBRE5MIMBG6L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 23, 2025 at 02:00:28PM +0200, Christian K=F6nig wrote:
> On 23.09.25 13:14, Dan Carpenter wrote:
> > Call dma_fence_put(fence) if dma_fence_add_callback() fails.
>=20
> Well that change is obviously incorrect.
>
> When dma_fence_add_callback() fails we already call dma_fence_put() and d=
rop the reference.
>=20
> When the dma_fence_add_callback() call succeeds the callback will drop th=
e reference.
>=20
> The problem here is that the return code of dma_fence_add_callback() is a=
n integer error code instead of a bool and basically has the reverse meanin=
g than what people usually expect.
>=20

Ah, yes.  You're exactly correct of course.  Sorry about that.

regards,
dan carpenter

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
