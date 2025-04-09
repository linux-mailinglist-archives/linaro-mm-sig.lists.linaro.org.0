Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE009A82198
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Apr 2025 12:01:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C870454D8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Apr 2025 10:01:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 50E6E3F5D2
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Apr 2025 10:01:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=A+EVdAeW;
	spf=pass (lists.linaro.org: domain of david@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=david@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744192887;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=UhsomB+pGcZTr0xfC9JjN6JYuerG9YdUwBkaq9uXxH8=;
	b=A+EVdAeWLsz9B48i3rlDyfODfNSymrIeVk52sYYlHtqhdKfs3Mur/OooeRn/KXhgXNXIWY
	fKO9U2PejHFRexD8G9jvgdrt9iKExgxVTIAqAYf7PgZPZDDWqXK0S4NelCpWgU5zmyxmjH
	wgAqrctFHYq7sotL5J266ls+jdK/snw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-hJl0L7KWPHi1nFVA1V5TPw-1; Wed, 09 Apr 2025 06:01:25 -0400
X-MC-Unique: hJl0L7KWPHi1nFVA1V5TPw-1
X-Mimecast-MFC-AGG-ID: hJl0L7KWPHi1nFVA1V5TPw_1744192885
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3913d8d7c3eso3602274f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Apr 2025 03:01:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744192884; x=1744797684;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UhsomB+pGcZTr0xfC9JjN6JYuerG9YdUwBkaq9uXxH8=;
        b=qu1PnXKyNJpbty61jgraNtT21Y84KityZNmJ2KUtaISCqXiSvXBmU3sN84SxW+5fDn
         HlEHXUfy4z6ai9Mux0VwLS7xiwFeJcebJKKkta1hebZoeER7QCaBRDkcHXpBigKfiXKz
         7i7Pgz0FrYhr0zCPnx482gDb9OAQR179u6tnQiP2BEHcAcGT2NgVCu1Z2+aW252bRYzk
         gxn6osCPGEDn7GAUk68NrtM9GlByq4g6nYeAbuASEedGY3lTcws7k/qX9Df9yNhkylqP
         4BSorY/dw6vbzv4Xyv/27xOCuCFQMHwV2YnNR+l8Jbfjeg2bOl775VoD+Y1hYge9xqRi
         NuOg==
X-Forwarded-Encrypted: i=1; AJvYcCUtn5mubA78D+2kgDwdTv/gGIO3u2Plvz0e/F4IwYAX5iUXN9wY77unnaft7zPyByZd9jf5+qmbxJ+P3xye@lists.linaro.org
X-Gm-Message-State: AOJu0YxZNTXSD6ToEK/sD4LpT5kDC4TjyvGdbacDiErBDmRpF/GIjOfd
	2b0ay/vFwrnkUMrmId4i3ulFb9VobCWzC0kMA90hf0lVh6IpL1ufjedQoGaXG1NMENihhhlX4nB
	9YlvnSkw/DmkdJb188vdqNpVQ18pe/wbHTOicIaTfE4mwEDVmdhUB5vICsK6hv9b7
X-Gm-Gg: ASbGncsdyUdaHawc9alDdHHHPrhLdzuj7M34FEKztH+R503Z8bS2E187NAfkBTDf7hd
	m0QDrvOQFTBX391oYHDnqSQAZMj7zXt5gARIXWLoJJ8V+fncSdXLoycmfmo1l2jhBis32ePac13
	l2XsyNIpeM+1snjsBbkkBq+C8p/z7zBmH3tup9AkkFuBmDJpr6oXyWbgE2lhPKSgqZ8EUgShWv3
	g4aka4KJ7mYsu3FoMsGpUqMimr6yVQ6JkfqMetU/CrEcLXFfHsD3WAEjFSRITDluMlUh6WvcuWi
	Ti4XCiOybSxaA7lSHfbjm4LyIYOPwS0ToIZ7/sZWv7lGMWo1gynRSl1Emfa7cbyXD1YlxMot2rB
	42gJEHcaghRLoksnWyDUT6dTc3aj5jAFTHg==
X-Received: by 2002:a5d:5f46:0:b0:39c:30f9:1e57 with SMTP id ffacd0b85a97d-39d87aa7b48mr1850967f8f.18.1744192884564;
        Wed, 09 Apr 2025 03:01:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGn9dm8e0cNTFadjdThfqm79abD8ZcW9cyIWghyoWetdqCNs3giSGCfAB7zcy8vbdovna6ymg==
X-Received: by 2002:a5d:5f46:0:b0:39c:30f9:1e57 with SMTP id ffacd0b85a97d-39d87aa7b48mr1850925f8f.18.1744192884148;
        Wed, 09 Apr 2025 03:01:24 -0700 (PDT)
Received: from ?IPV6:2003:cb:c70d:8400:ed9b:a3a:88e5:c6a? (p200300cbc70d8400ed9b0a3a88e50c6a.dip0.t-ipconnect.de. [2003:cb:c70d:8400:ed9b:a3a:88e5:c6a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893fe28fsm1161542f8f.96.2025.04.09.03.01.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 03:01:23 -0700 (PDT)
Message-ID: <561d6050-e24f-4643-806f-8a520e324d11@redhat.com>
Date: Wed, 9 Apr 2025 12:01:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sumit Garg <sumit.garg@kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
 <20250305130634.1850178-10-jens.wiklander@linaro.org>
 <Z-JePo6yGlUgrZkw@sumit-X1>
 <CAHUa44H1MzBLBM+Oeawca52C8PF3uAT0ggbL-zRdnBqj4LYrZg@mail.gmail.com>
 <Z-u8MWNVNy9lLbkK@sumit-X1>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <Z-u8MWNVNy9lLbkK@sumit-X1>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AMAUlNSq1Z-ga9048sYC7DcUaW3GcRci8wDnr9tet64_1744192885
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 50E6E3F5D2
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,us-smtp-delivery-124.mimecast.com:helo,us-smtp-delivery-124.mimecast.com:rdns];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org,kvack.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[redhat.com:dkim];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: I7OGSUJ3AJ2N724SOGCHQWDS2BL2BIBY
X-Message-ID-Hash: I7OGSUJ3AJ2N724SOGCHQWDS2BL2BIBY
X-MailFrom: david@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 09/10] optee: FF-A: dynamic restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I7OGSUJ3AJ2N724SOGCHQWDS2BL2BIBY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDEuMDQuMjUgMTI6MTMsIFN1bWl0IEdhcmcgd3JvdGU6DQo+ICsgTU0gZm9sa3MgdG8gc2Vl
ayBndWlkYW5jZSBoZXJlLg0KPiANCj4gT24gVGh1LCBNYXIgMjcsIDIwMjUgYXQgMDk6MDc6MzRB
TSArMDEwMCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+PiBIaSBTdW1pdCwNCj4+DQo+PiBPbiBU
dWUsIE1hciAyNSwgMjAyNSBhdCA4OjQy4oCvQU0gU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BrZXJu
ZWwub3JnPiB3cm90ZToNCj4+Pg0KPj4+IE9uIFdlZCwgTWFyIDA1LCAyMDI1IGF0IDAyOjA0OjE1
UE0gKzAxMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPj4+PiBBZGQgc3VwcG9ydCBpbiB0aGUg
T1AtVEVFIGJhY2tlbmQgZHJpdmVyIGR5bmFtaWMgcmVzdHJpY3RlZCBtZW1vcnkNCj4+Pj4gYWxs
b2NhdGlvbiB3aXRoIEZGLUEuDQo+Pj4+DQo+Pj4+IFRoZSByZXN0cmljdGVkIG1lbW9yeSBwb29s
cyBmb3IgZHluYW1pY2FsbHkgYWxsb2NhdGVkIHJlc3RyaWN0IG1lbW9yeQ0KPj4+PiBhcmUgaW5z
dGFudGlhdGVkIHdoZW4gcmVxdWVzdGVkIGJ5IHVzZXItc3BhY2UuIFRoaXMgaW5zdGFudGlhdGlv
biBjYW4NCj4+Pj4gZmFpbCBpZiBPUC1URUUgZG9lc24ndCBzdXBwb3J0IHRoZSByZXF1ZXN0ZWQg
dXNlLWNhc2Ugb2YgcmVzdHJpY3RlZA0KPj4+PiBtZW1vcnkuDQo+Pj4+DQo+Pj4+IFJlc3RyaWN0
ZWQgbWVtb3J5IHBvb2xzIGJhc2VkIG9uIGEgc3RhdGljIGNhcnZlb3V0IG9yIGR5bmFtaWMgYWxs
b2NhdGlvbg0KPj4+PiBjYW4gY29leGlzdCBmb3IgZGlmZmVyZW50IHVzZS1jYXNlcy4gV2UgdXNl
IG9ubHkgZHluYW1pYyBhbGxvY2F0aW9uIHdpdGgNCj4+Pj4gRkYtQS4NCj4+Pj4NCj4+Pj4gU2ln
bmVkLW9mZi1ieTogSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+
Pj4+IC0tLQ0KPj4+PiAgIGRyaXZlcnMvdGVlL29wdGVlL01ha2VmaWxlICAgICAgICB8ICAgMSAr
DQo+Pj4+ICAgZHJpdmVycy90ZWUvb3B0ZWUvZmZhX2FiaS5jICAgICAgIHwgMTQzICsrKysrKysr
KysrKy0NCj4+Pj4gICBkcml2ZXJzL3RlZS9vcHRlZS9vcHRlZV9wcml2YXRlLmggfCAgMTMgKy0N
Cj4+Pj4gICBkcml2ZXJzL3RlZS9vcHRlZS9yc3RtZW0uYyAgICAgICAgfCAzMjkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrDQo+Pj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCA0ODMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy90ZWUvb3B0ZWUvcnN0bWVtLmMNCj4+Pj4NCj4gDQo+IDxzbmlwPg0KPiANCj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdGVlL29wdGVlL3JzdG1lbS5jIGIvZHJpdmVycy90ZWUvb3B0ZWUvcnN0
bWVtLmMNCj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+Pj4gaW5kZXggMDAwMDAwMDAwMDAw
Li5lYTI3NzY5OTM0ZDQNCj4+Pj4gLS0tIC9kZXYvbnVsbA0KPj4+PiArKysgYi9kcml2ZXJzL3Rl
ZS9vcHRlZS9yc3RtZW0uYw0KPj4+PiBAQCAtMCwwICsxLDMyOSBAQA0KPj4+PiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0KPj4+PiArLyoNCj4+Pj4gKyAqIENvcHly
aWdodCAoYykgMjAyNSwgTGluYXJvIExpbWl0ZWQNCj4+Pj4gKyAqLw0KPj4+PiArI2RlZmluZSBw
cl9mbXQoZm10KSBLQlVJTERfTU9ETkFNRSAiOiAiIGZtdA0KPj4+PiArDQo+Pj4+ICsjaW5jbHVk
ZSA8bGludXgvZXJybm8uaD4NCj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9nZW5hbGxvYy5oPg0KPj4+
PiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9zdHJpbmcu
aD4NCj4+Pj4gKyNpbmNsdWRlIDxsaW51eC90ZWVfY29yZS5oPg0KPj4+PiArI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+DQo+Pj4+ICsjaW5jbHVkZSAib3B0ZWVfcHJpdmF0ZS5oIg0KPj4+PiArDQo+
Pj4+ICtzdHJ1Y3Qgb3B0ZWVfcnN0bWVtX2NtYV9wb29sIHsNCj4+Pj4gKyAgICAgc3RydWN0IHRl
ZV9yc3RtZW1fcG9vbCBwb29sOw0KPj4+PiArICAgICBzdHJ1Y3QgZ2VuX3Bvb2wgKmdlbl9wb29s
Ow0KPj4+PiArICAgICBzdHJ1Y3Qgb3B0ZWUgKm9wdGVlOw0KPj4+PiArICAgICBzaXplX3QgcGFn
ZV9jb3VudDsNCj4+Pj4gKyAgICAgdTE2ICplbmRfcG9pbnRzOw0KPj4+PiArICAgICB1X2ludCBl
bmRfcG9pbnRfY291bnQ7DQo+Pj4+ICsgICAgIHVfaW50IGFsaWduOw0KPj4+PiArICAgICByZWZj
b3VudF90IHJlZmNvdW50Ow0KPj4+PiArICAgICB1MzIgdXNlX2Nhc2U7DQo+Pj4+ICsgICAgIHN0
cnVjdCB0ZWVfc2htICpyc3RtZW07DQo+Pj4+ICsgICAgIC8qIFByb3RlY3RzIHdoZW4gaW5pdGlh
bGl6aW5nIGFuZCB0ZWFyaW5nIGRvd24gdGhpcyBzdHJ1Y3QgKi8NCj4+Pj4gKyAgICAgc3RydWN0
IG11dGV4IG11dGV4Ow0KPj4+PiArfTsNCj4+Pj4gKw0KPj4+PiArc3RhdGljIHN0cnVjdCBvcHRl
ZV9yc3RtZW1fY21hX3Bvb2wgKg0KPj4+PiArdG9fcnN0bWVtX2NtYV9wb29sKHN0cnVjdCB0ZWVf
cnN0bWVtX3Bvb2wgKnBvb2wpDQo+Pj4+ICt7DQo+Pj4+ICsgICAgIHJldHVybiBjb250YWluZXJf
b2YocG9vbCwgc3RydWN0IG9wdGVlX3JzdG1lbV9jbWFfcG9vbCwgcG9vbCk7DQo+Pj4+ICt9DQo+
Pj4+ICsNCj4+Pj4gK3N0YXRpYyBpbnQgaW5pdF9jbWFfcnN0bWVtKHN0cnVjdCBvcHRlZV9yc3Rt
ZW1fY21hX3Bvb2wgKnJwKQ0KPj4+PiArew0KPj4+PiArICAgICBpbnQgcmM7DQo+Pj4+ICsNCj4+
Pj4gKyAgICAgcnAtPnJzdG1lbSA9IHRlZV9zaG1fYWxsb2NfY21hX3BoeXNfbWVtKHJwLT5vcHRl
ZS0+Y3R4LCBycC0+cGFnZV9jb3VudCwNCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHJwLT5hbGlnbik7DQo+Pj4+ICsgICAgIGlmIChJU19FUlIocnAt
PnJzdG1lbSkpIHsNCj4+Pj4gKyAgICAgICAgICAgICByYyA9IFBUUl9FUlIocnAtPnJzdG1lbSk7
DQo+Pj4+ICsgICAgICAgICAgICAgZ290byBlcnJfbnVsbF9yc3RtZW07DQo+Pj4+ICsgICAgIH0N
Cj4+Pj4gKw0KPj4+PiArICAgICAvKg0KPj4+PiArICAgICAgKiBUT0RPIHVubWFwIHRoZSBtZW1v
cnkgcmFuZ2Ugc2luY2UgdGhlIHBoeXNpY2FsIG1lbW9yeSB3aWxsDQo+Pj4+ICsgICAgICAqIGJl
Y29tZSBpbmFjY2VzaWJsZSBhZnRlciB0aGUgbGVuZF9yc3RtZW0oKSBjYWxsLg0KPj4+PiArICAg
ICAgKi8NCj4+Pg0KPj4+IFdoYXQncyB5b3VyIHBsYW4gZm9yIHRoaXMgVE9ETz8gSSB0aGluayB3
ZSBuZWVkIGEgQ01BIGFsbG9jYXRvciBoZXJlDQo+Pj4gd2hpY2ggY2FuIGFsbG9jYXRlIHVuLW1h
cHBlZCBtZW1vcnkgc3VjaCB0aGF0IGFueSBjYWNoZSBzcGVjdWxhdGlvbg0KPj4+IHdvbid0IGxl
YWQgdG8gQ1BVIGhhbmdzIG9uY2UgdGhlIG1lbW9yeSByZXN0cmljdGlvbiBjb21lcyBpbnRvIHBp
Y3R1cmUuDQo+Pg0KPj4gV2hhdCBoYXBwZW5zIGlzIHBsYXRmb3JtLXNwZWNpZmljLiBGb3Igc29t
ZSBwbGF0Zm9ybXMsIGl0IG1pZ2h0IGJlDQo+PiBlbm91Z2ggdG8gYXZvaWQgZXhwbGljaXQgYWNj
ZXNzLiBZZXMsIGEgQ01BIGFsbG9jYXRvciB3aXRoIHVubWFwcGVkDQo+PiBtZW1vcnkgb3Igd2hl
cmUgbWVtb3J5IGNhbiBiZSB1bm1hcHBlZCBpcyBvbmUgb3B0aW9uLg0KPiANCj4gRGlkIHlvdSBn
ZXQgYSBjaGFuY2UgdG8gZW5hYmxlIHJlYWwgbWVtb3J5IHByb3RlY3Rpb24gb24gUm9ja1BpIGJv
YXJkPw0KPiBUaGlzIHdpbGwgYXRsZWFzdCBlbnN1cmUgdGhhdCBtYXBwZWQgcmVzdHJpY3RlZCBt
ZW1vcnkgd2l0aG91dCBleHBsaWNpdA0KPiBhY2Nlc3Mgd29ya3MgZmluZS4gU2luY2Ugb3RoZXJ3
aXNlIG9uY2UgcGVvcGxlIHN0YXJ0IHRvIGVuYWJsZSByZWFsDQo+IG1lbW9yeSByZXN0cmljdGlv
biBpbiBPUC1URUUsIHRoZXJlIGNhbiBiZSBjaGFuY2VzIG9mIHJhbmRvbSBoYW5nIHVwcw0KPiBk
dWUgdG8gY2FjaGUgc3BlY3VsYXRpb24uDQo+IA0KPiBNTSBmb2xrcywNCj4gDQo+IEJhc2ljYWxs
eSB3aGF0IHdlIGFyZSB0cnlpbmcgdG8gYWNoaWV2ZSBoZXJlIGlzIGEgIm5vLW1hcCIgRFQgYmVo
YXZpb3VyDQo+IFsxXSB3aGljaCBpcyByYXRoZXIgZHluYW1pYyBpbiAgbmF0dXJlLiBUaGUgdXNl
LWNhc2UgaGVyZSBpcyB0aGF0IGEgbWVtb3J5DQo+IGJsb2NrIGFsbG9jYXRlZCBmcm9tIENNQSBj
YW4gYmUgbWFya2VkIHJlc3RyaWN0ZWQgYXQgcnVudGltZSB3aGVyZSB3ZQ0KPiB3b3VsZCBsaWtl
IHRoZSBMaW51eCBub3QgYmVpbmcgYWJsZSB0byBkaXJlY3RseSBvciBpbmRpcmVjdGx5IChjYWNo
ZQ0KPiBzcGVjdWxhdGlvbikgYWNjZXNzIGl0LiBPbmNlIG1lbW9yeSByZXN0cmljdGlvbiB1c2Ut
Y2FzZSBoYXMgYmVlbg0KPiBjb21wbGV0ZWQsIHRoZSBtZW1vcnkgYmxvY2sgY2FuIGJlIG1hcmtl
ZCBhcyBub3JtYWwgYW5kIGZyZWVkIGZvcg0KPiBmdXJ0aGVyIENNQSBhbGxvY2F0aW9uLg0KPiAN
Cj4gSXQgd2lsbCBiZSBhcHByY2lhdGVkIGlmIHlvdSBjYW4gZ3VpZGUgdXMgcmVnYXJkaW5nIHRo
ZSBhcHByb3ByaWF0ZSBBUElzDQo+IHRvIHVzZSBmb3IgdW4tbWFwcGluZy9tYW1waW5nIENNQSBh
bGxvY2F0aW9ucyBmb3IgdGhpcyB1c2UtY2FzZS4NCg0KQ2FuIHdlIGdldCBzb21lIG1vcmUgaW5m
b3JtYXRpb24gd2h5IHRoYXQgaXMgZXZlbiByZXF1aXJlZCwgc28gd2UgY2FuIA0KZGVjaWRlIGlm
IHRoYXQgaXMgZXZlbiB0aGUgcmlnaHQgdGhpbmcgdG8gZG8/IDopDQoNCldobyB3b3VsZCBtYXJr
IHRoZSBtZW1vcnkgYmxvY2sgYXMgcmVzdHJpY3RlZCBhbmQgZm9yIHdoaWNoIHB1cnBvc2U/DQoN
CkluIGFyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvcG93ZXJudi9tZW10cmFjZS5jIHdlIGhhdmUgc29t
ZSBhcmNoLXNwZWNpZmljIA0KY29kZSB0byByZW1vdmUgdGhlIGRpcmVjdG1hcCBhZnRlciBhbGxv
Y19jb250aWdfcGFnZXMoKS4gU2VlIA0KbWVtdHJhY2VfYWxsb2Nfbm9kZSgpLiBCdXQgaXQncyB2
ZXJ5IGFyY2gtc3BlY2lmaWMgLi4uDQoNCi0tIA0KQ2hlZXJzLA0KDQpEYXZpZCAvIGRoaWxkZW5i
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
