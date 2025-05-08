Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E00DAAFD6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 16:42:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 237A1459A0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 14:42:41 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 2BCF144201
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 14:42:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=ADChOwVv;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (lists.linaro.org: domain of tfiga@chromium.org designates 209.85.218.44 as permitted sender) smtp.mailfrom=tfiga@chromium.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-acb615228a4so423012066b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 May 2025 07:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746715348; x=1747320148; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hrrj7tzRV0HSot50MsrZe31qPKZT2X3/IHla60zHnEo=;
        b=ADChOwVvT9zEKMj87QSsvKD5WPwvwmDdPqr3Tfgi28pLJFys0Ls9U6DDgrrxEwL+1y
         0Bi3sf6fsrfIDlsVMd+fRxjL26YlFbTORZiJTZbRI7bCux2FgHQhEjHQsdscndXfCH+l
         3+W6/rTTo5h24g8rIlgrdDndCVJ4jxWQZ83cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715348; x=1747320148;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hrrj7tzRV0HSot50MsrZe31qPKZT2X3/IHla60zHnEo=;
        b=E/EUNva8/zhMaSVV0p5WiuTCcYDVdM98kjzpZXvsazrGx+Lnu0/o5T5XHurz4ngx2D
         NvOGbqm3pYMvyyK2SrbAzNlPiAAeJ6HY8EH5wVFVqYDXwr9QBO8ldrU+llREGSe+2wxp
         EdTt7seqzu/pq7mlM2sd/MnB+DoU4s4kP8dWOcg/8O4JrIOZEm9vR2WttizQjNw4UsOu
         FDeK9ZABfJAgfP6IA6GBl5svOtlMzrf7jjt0jz055cDumMTxu9IP8X4yR9Iss6nOfpsO
         B87J04Lyqc4r0JigDWpPJipR4eKXSg6eCrRJFT8QAGDZhXB2EB+HWLlZ4Y+SncgdDI7b
         HJvA==
X-Forwarded-Encrypted: i=1; AJvYcCXXqayhYWBUB4oH9GVmDjMEIupH/g9NYxQsUyrSXabBhdrp+GC9FC4BuL5Iv9BiGEfSmnvmOCuOsJ1ODMvY@lists.linaro.org
X-Gm-Message-State: AOJu0YxAon/ZRDFOm3RQq4bR0NhgMceZLJ7Vi34z6Ni4KhAz38XQT6I/
	dsvRXTz9QPCGeBnUfqJN5Mz8AhmFnIVN5m4lpvj+CA+KoN3pLr2oOeq/f+Zg7WNuQ1YhpI43Du4
	=
X-Gm-Gg: ASbGncvto+596LRQPW4n4aiAu/4L05M2WgkQL2we5eP+fQFn/8NJBseRKsg+MH1fxB0
	RqthiVzpVZB0rK08Myabmp1Cb8/pVAIZw9KrZc6QV1+nHAPnnxlbJME0qnkLTJszDHAmKiYG+iK
	0UTIT3xS7W7R7r1EE75MDL6IGLVelAQCVyOzqfrzuAoulEUdmVuGOPIjjUgDI2ETo4LFeEYiw2D
	iS+6vg6g20kjKKs3pms749o2FtJWo9bn8XYqGs4Eh1untvR8xQsfg9tWXTPn8ISPSRJBiw6QzgM
	XIiJKhgaeNUZfN6jM73n5V+OzSaQpgdqPIcJDGd+yyvEBnUF04Hv2FD3sW4AzWKHRhwHAUevAc+
	GElr5m4Z9yPg=
X-Google-Smtp-Source: AGHT+IF2O8lccEabD0pgbjUpW6q43PdSdLb9yilyR4l6KL6zQyS+rplgfZ8Bm2lkq32fyzonvG5uqg==
X-Received: by 2002:a17:907:7e87:b0:abf:48df:bf07 with SMTP id a640c23a62f3a-ad1fcb7e528mr391686066b.15.1746715347645;
        Thu, 08 May 2025 07:42:27 -0700 (PDT)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146c62sm1093559066b.24.2025.05.08.07.42.26
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:42:26 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5f438523d6fso10004a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 May 2025 07:42:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVTOB01i79IRQhTTkgQCO+jlbW9IG7LJCS5y8Z0/pM9THgRoqCg+rnTSUrJjxCjq39R75iqiFtxkmA4xDNs@lists.linaro.org
X-Received: by 2002:a50:8e57:0:b0:5fb:f573:78fe with SMTP id
 4fb4d7f45d1cf-5fc6d3df3d1mr75346a12.1.1746715346027; Thu, 08 May 2025
 07:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73@eucas1p2.samsung.com>
 <20250507160913.2084079-1-m.szyprowski@samsung.com> <20250507160913.2084079-2-m.szyprowski@samsung.com>
In-Reply-To: <20250507160913.2084079-2-m.szyprowski@samsung.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 8 May 2025 23:42:09 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CUOJJ_fpzXrihtqxRiAZfWBNtCxkaDi6GeZk0rc+XKvA@mail.gmail.com>
X-Gm-Features: ATxdqUGjYbxgU6zpFJMZMGQW-VMwakmlnKiG_rNSxR-mybkfMglw3-_t5QXxPAE
Message-ID: <CAAFQd5CUOJJ_fpzXrihtqxRiAZfWBNtCxkaDi6GeZk0rc+XKvA@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2BCF144201
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.linux.dev,kernel.org,chromium.org,xs4all.nl,arm.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: RXHOL6E3D4KJNR5HLJDB5KMV4KAZGJFK
X-Message-ID-Hash: RXHOL6E3D4KJNR5HLJDB5KMV4KAZGJFK
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <senozhatsky@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] media: videobuf2: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RXHOL6E3D4KJNR5HLJDB5KMV4KAZGJFK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgOCwgMjAyNSBhdCAxOjA54oCvQU0gTWFyZWsgU3p5cHJvd3NraQ0KPG0uc3p5
cHJvd3NraUBzYW1zdW5nLmNvbT4gd3JvdGU6DQo+DQo+IFVzZSBjb21tb24gd3JhcHBlcnMgb3Bl
cmF0aW5nIGRpcmVjdGx5IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cyB0bw0KPiBmaXgg
aW5jb3JyZWN0IHVzZSBvZiBzY2F0dGVybGlzdHMgc3luYyBjYWxscy4gZG1hX3N5bmNfc2dfZm9y
XyooKQ0KPiBmdW5jdGlvbnMgaGF2ZSB0byBiZSBjYWxsZWQgd2l0aCB0aGUgbnVtYmVyIG9mIGVs
ZW1lbnRzIG9yaWdpbmFsbHkgcGFzc2VkDQo+IHRvIGRtYV9tYXBfc2dfKigpIGZ1bmN0aW9uLCBu
b3QgdGhlIG9uZSByZXR1cm5lZCBpbiBzZ3QtPm5lbnRzLg0KPg0KPiBGaXhlczogZDRkYjVlYjU3
Y2FiICgibWVkaWE6IHZpZGVvYnVmMjogYWRkIGJlZ2luL2VuZCBjcHVfYWNjZXNzIGNhbGxiYWNr
cyB0byBkbWEtc2ciKQ0KPiBDQzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2Zm
LWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyB8IDQg
KystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkN
Cj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1
ZjItZG1hLXNnLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRt
YS1zZy5jDQo+IGluZGV4IGM2ZGRmMjM1N2M1OC4uYjNiZjIxNzNjMTRlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jDQo+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCj4g
QEAgLTQ2OSw3ICs0NjksNyBAQCB2YjJfZG1hX3NnX2RtYWJ1Zl9vcHNfYmVnaW5fY3B1X2FjY2Vz
cyhzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiwNCj4gICAgICAgICBzdHJ1Y3QgdmIyX2RtYV9zZ19idWYg
KmJ1ZiA9IGRidWYtPnByaXY7DQo+ICAgICAgICAgc3RydWN0IHNnX3RhYmxlICpzZ3QgPSBidWYt
PmRtYV9zZ3Q7DQo+DQo+IC0gICAgICAgZG1hX3N5bmNfc2dfZm9yX2NwdShidWYtPmRldiwgc2d0
LT5zZ2wsIHNndC0+bmVudHMsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICsgICAgICAgZG1hX3N5bmNfc2d0
YWJsZV9mb3JfY3B1KGJ1Zi0+ZGV2LCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICAgICAgICAgcmV0
dXJuIDA7DQo+ICB9DQo+DQo+IEBAIC00ODAsNyArNDgwLDcgQEAgdmIyX2RtYV9zZ19kbWFidWZf
b3BzX2VuZF9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkYnVmLA0KPiAgICAgICAgIHN0cnVj
dCB2YjJfZG1hX3NnX2J1ZiAqYnVmID0gZGJ1Zi0+cHJpdjsNCj4gICAgICAgICBzdHJ1Y3Qgc2df
dGFibGUgKnNndCA9IGJ1Zi0+ZG1hX3NndDsNCj4NCj4gLSAgICAgICBkbWFfc3luY19zZ19mb3Jf
ZGV2aWNlKGJ1Zi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgYnVmLT5kbWFfZGlyKTsNCj4g
KyAgICAgICBkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoYnVmLT5kZXYsIHNndCwgYnVmLT5k
bWFfZGlyKTsNCj4gICAgICAgICByZXR1cm4gMDsNCj4gIH0NCj4NCj4gLS0NCj4gMi4zNC4xDQo+
DQoNClRoYW5rcyBmb3IgdGhlIGZpeCENCg0KQWNrZWQtYnk6IFRvbWFzeiBGaWdhIDx0ZmlnYUBj
aHJvbWl1bS5vcmc+DQoNCkJlc3QgcmVnYXJkcywNClRvbWFzeg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
