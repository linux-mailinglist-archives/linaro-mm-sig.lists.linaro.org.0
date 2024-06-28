Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042A91C743
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 22:23:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21EE044984
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 20:23:31 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by lists.linaro.org (Postfix) with ESMTPS id 1A31040E1F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 20:23:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=yxfYNMEd;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.45) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6b4febddfd3so5507826d6.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 13:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1719606207; x=1720211007; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=meF+jxyCw4OoAYyu1gwMI5pGdbLesBvTuciMbHzTey8=;
        b=yxfYNMEdk8gvQyLWxsBhzPh+dW+TvFh/XegEQRdPNvOLrnKCEsqFS/ZuJAnj1Uey8v
         Ia4WfheH56IP1bGNjXAajgnozDncSKbLtUiEFEEk9ffBpTcLmsIHR+m/95rBbq7PNQMd
         o+ZTFJkDXW2CrxFOotmNdjg1PdWaXJhJ2Jku9cpqi+pFGbVvGUlN3Um1gxvhqfWH9pVb
         67qbN2SzXAfjVJ2j+j8ZgfSYSjBhEBFvHjtVciWB+iDKR80peV6I80A/dZBCJX/yWAN1
         iIq6yErsoWKknRaroki+NQH+IrMYrD7FiRztHwG74WelLVnrht8AtpyFVsHVbh8Q38KV
         1hrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719606207; x=1720211007;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=meF+jxyCw4OoAYyu1gwMI5pGdbLesBvTuciMbHzTey8=;
        b=B1gk7gd76gz8zHbc0pdq+kE+qGd9xtT2sBDnIn4D+TuyrD8c1WZDYgh2Y8nhZgSItA
         FlTnBedi7hciQ2CYEnE080tXAaW6iT38rSv34MvLQoQN50yCICWJVUcD2MjdsAsTRpMA
         +Rt+z+kMmLD45gTi7halGHMYgVKrSpMYgqevmlpPD9EdfVEEN7BNlu/HJ07QIOvRk8RK
         vEs1xjWm9FNF8DQnUasS582i4Crbz6ovHVj3yGwWCthN9jWHsce9IqfhV6Pq7lFzawqy
         5Xog7bDNDI39tgmwG/uY+04GfRb5204E+Qh/Ul6nwZEQXcQXRwmoK8hSTZhrRf2l3aXq
         W73g==
X-Forwarded-Encrypted: i=1; AJvYcCVEMTpgFPPnb6UJWCzbvi3YOe6PuU206KAKWz+iTDpVJqoQ9rGFt6fo6efbC9RsEY1LnzmugDKtJUV22A0wd2+QR8PZeRbJf+XKwSErVNI=
X-Gm-Message-State: AOJu0YwqqwSGDVof9uGZrLGaiYpS6OIu/K8HEVibXEeb2GAem37mXm6G
	QEhO4p0tkiGtTJkgiFXmaPb9jBXEpIDVB3+9LhBoMa9I4S6FEX5TppKvZ/g5ixM=
X-Google-Smtp-Source: AGHT+IHtfw7Xq3Cf0WFYd9L6i5fVpDUyYC/Xic5L6R5XMrTyAZAROOc6sOeuO8nND/pHTXuCm/Q3Pg==
X-Received: by 2002:a05:6214:27e9:b0:6b5:98aa:8b1b with SMTP id 6a1803df08f44-6b598aa8c3amr67210986d6.50.1719606207610;
        Fri, 28 Jun 2024 13:23:27 -0700 (PDT)
Received: from nicolas-tpx395.mtl.collabora.ca (mtl.collabora.ca. [66.171.169.34])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b59e6146bcsm10736956d6.120.2024.06.28.13.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 13:23:27 -0700 (PDT)
Message-ID: <ee405147d5e9826f1b2ad7d7c3bdb2fb745de420.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: "mripard@kernel.org" <mripard@kernel.org>, Christian
 =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Fri, 28 Jun 2024 16:23:25 -0400
In-Reply-To: <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
References: <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
	 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
	 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
	 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
	 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
	 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
	 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
	 <ZnxWWtdShekGSUif@phenom.ffwll.local>
	 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
	 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
	 <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 1A31040E1F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,ffwll.ch,quicinc.com,collabora.com,linaro.org,kernel.org,google.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XTUKHEPCUBKGAPPGOIR72HO7UBIYHGGW
X-Message-ID-Hash: XTUKHEPCUBKGAPPGOIR72HO7UBIYHGGW
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason-JH Lin =?UTF-8?Q?=28=E6=9E=97=E7=9D=BF=E7=A5=A5=29?= <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?UTF-8?Q?=28=E8=A3=B4=E5=8F=8B=E6=9E=97=29?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?UTF-8?Q?=28=E6=9B=BE=E5=81=A5=E5=A7=A3=29?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benj
 amin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?UTF-8?Q?=28=E5=90=B4=E5=8B=87=29?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XTUKHEPCUBKGAPPGOIR72HO7UBIYHGGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkxlIGpldWRpIDI3IGp1aW4gMjAyNCDDoCAxNjo0MCArMDIwMCwgbXJpcGFyZEBrZXJu
ZWwub3JnIGEgw6ljcml0wqA6DQo+ID4gWW91IGNhbiB0cml2aWFsbHkgc2F5IGR1cmluZyB1c2Ug
aGV5IHRoaXMgYnVmZmVyIGlzIGVuY3J5cHRlZC4NCj4gPiANCj4gPiBBdCBsZWFzdCB0aGF0J3Mg
bXkgMTAgbWlsZSBoaWdoIHZpZXcsIG1heWJlIEknbSBtaXNzaW5nIHNvbWUgZXh0ZW5zaXZlIGtl
eQ0KPiA+IGV4Y2hhbmdlIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuDQo+IA0KPiBUaGF0IGRvZXNu
J3Qgd29yayBpbiBhbGwgY2FzZXMsIHVuZm9ydHVuYXRlbHkuDQo+IA0KPiBJZiB5b3UncmUgZG9p
bmcgc2VjdXJlIHZpZGVvIHBsYXliYWNrLCB0aGUgZmlybXdhcmUgaXMgdHlwaWNhbGx5IGluDQo+
IGNoYXJnZSBvZiB0aGUgZnJhbWUgZGVjcnlwdGlvbi9kZWNvZGluZywgYW5kIHlvdSdkIGdldCBk
bWEtYnVmIGJhY2sgdGhhdA0KPiBhcmVuJ3QgYWNjZXNzaWJsZSBieSB0aGUgQ1BVIChvciBhdCBs
ZWFzdCwgbm90IGF0IHRoZSBleGVjdXRpb24gbGV2ZWwNCj4gTGludXggcnVucyB3aXRoKS4NCj4g
DQo+IFNvIG5vYm9keSBjYW4gbWFwIHRoYXQgYnVmZmVyLCBhbmQgdGhlIGZpcm13YXJlIGRyaXZl
ciBpcyB0aGUgb25lIHdobw0KPiBrbm93cyB0aGF0IHRoaXMgYnVmZmVyIGNhbm5vdCBiZSBhY2Nl
c3NlZCBieSBhbnlvbmUuIFB1dHRpbmcgdGhpcyBvbiB0aGUNCj4gdXNlcnNwYWNlIHRvIGtub3cg
d291bGQgYmUgcHJldHR5IHdlaXJkLCBhbmQgd291bGRuJ3Qgc29sdmUgdGhlIGNhc2UNCj4gd2hl
cmUgdGhlIGtlcm5lbCB3b3VsZCB0cnkgdG8gbWFwIGl0Lg0KDQpVc2Vyc3BhY2Ugd2lsbCBiZSB0
aGUgb25lIGNhbGxpbmcgaW50byB0aGUgQ0RNIFRGLUEgdG8gZ2V0IHRoZSBiaXRzdHJlYW0gYnVm
ZmVyDQp0byBiZSBkZWNyeXB0ZWQsIG5vdCB0aGUgZmlybXdhcmUuIFRoZSBlbmNyeXB0ZWQgYnVm
ZmVycyBhcmUgbm90IHVzaW5nDQpyZXN0cmljdGVkIG1lbW9yeS4gVXNlcnNwYWNlIGlzIGFsc28g
cmVzcG9uc2libGUgZm9yIGNhbGxpbmcgaW50byB0aGUgTVRLDQpyZXN0cmljdGVkIGhlYXAgdG8g
YWxsb2NhdGUgdGhlIGRlc3RpbmF0aW9uIGJ1ZmZlciAob24gb3RoZXIgcGxhdGZvcm0gaXQgY291
bGQNCmJlIENNQSBoZWFwcyArIFRGLUEgY2FsbCB0byByZXN0cmljdCB0aGUgYWxsb2NhdGVkIG1l
bW9yeSwgSSd2ZSBzZWVuIHNvbWUNCmRpc2N1c3Npb25zIHJlbGF0ZWQgdG8gdGhpcywgYnV0IGl0
cyBub3QgcG9zc2libGUgb24gTWVkaWF0ZWsgSFcpLg0KDQpJIHRoaW5rIGl0cyBmYWlyIHRvIGFz
c3VtZSB0aGF0IHVzZXJzcGFjZSBhbHdheXMga25vdyB3aGljaCBidWZmZXJzIGFyZQ0KcmVzdHJp
Y3RlZCBvciBub3QgaW4gdGhlIFNWUCBwcm9jZXNzLg0KDQpOaWNvbGFzDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
