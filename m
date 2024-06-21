Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D207911C93
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 09:14:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDA2D43C4F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 07:14:39 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 9A6DC3F68F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 07:14:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=LjSlwrAM;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.208.42 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57ccd1111aeso1968986a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 00:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718954073; x=1719558873; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I1d26+FYwmfD9Tc9dF0H8tsiQttz7MrvNQjmOX9mk7s=;
        b=LjSlwrAM1m/gHuo0grWyjE6O2R1ziV7R2uNc14anrdtOsTlETFYPf3E1NSt9M3NvGs
         RTplIIbkrVKy5FD6r7Q3rSjxynriA8NWGGWs2oU6hj/huJCQ8DMAe+h8jvFtf/5HrmpT
         icTeYcYTZ6lqgjj4MbL+AyYoAjcDVjKn+AVnsPLsnCtcGUqk1KxSa/eNDKqE8VRLGxCV
         ROyWM2X7MCo8vyxO3/b1bxkZ3g19/KtF4AQFfEfsgomWlVeWwqcNDyK3M8l5qwxlWpH3
         MidwhpiGshKsC3SUsCdBphz9XksnWsjQYWF6BcxQE1m8NMpC8fvhiGHKGm5OuaVEzHow
         ZuXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718954073; x=1719558873;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I1d26+FYwmfD9Tc9dF0H8tsiQttz7MrvNQjmOX9mk7s=;
        b=PT/xR38A0E59ybPa0kIXIxLMAmwoSDOzrgmScyRbie2cbHYixoORYH1Zo7jk5i/MKi
         xx8+3TBgaXZOHw1Ms/f8Uy0HCbqVjp3StlrIEr0DT6uRU+Fzdyk8JnqqKx2cLOM+zhgy
         UT9bZlnlr5hUgc6OatUqWXgbk0PdvoKIgL76V+k2Qkw6LNSHHU6zFGFyeYbE6omwY7wm
         uU4wyBK+SKklU9z9AG1ndE7YtiBTkRcv+pBH/hl1P5ZyPrIxC8DsK67DsP/itBiafZj2
         wqPX5xF2eQT1JsCKYudZdmO1ZW2K5ZxGLKHmO+njzocecIa4GMkmP+uvwnNU3/VsQLx/
         rk9g==
X-Forwarded-Encrypted: i=1; AJvYcCW368DciHho0/CkheJTRSowQShedBzNYDts6FARUjpUMrdHEZROc1Xd+l2H4haD0e428hjfDo+S664/asNSeXHJOKLqxEyXyHvz/SvI74M=
X-Gm-Message-State: AOJu0YzuJbKKX+9oKDRESgk7OdEo/6DERpg3vmTw6cA9j67yYUW4om78
	6UmO5UUNQbqXb5LRbJeuqIiFwYf1L/fk4+75J37c51HTTXcvMYY/
X-Google-Smtp-Source: AGHT+IHJQ1yPK263/uUvL42ye22QYzUxYEagwPu/zDgRslXQjOwm4KteKF6Tb6SaGoGeiBRNCTcVaA==
X-Received: by 2002:a50:c050:0:b0:57d:22ef:d055 with SMTP id 4fb4d7f45d1cf-57d22efd0e0mr2481140a12.24.1718954073269;
        Fri, 21 Jun 2024 00:14:33 -0700 (PDT)
Received: from ?IPv6:2003:f6:ef1c:c500:ee59:d953:f148:40ba? (p200300f6ef1cc500ee59d953f14840ba.dip0.t-ipconnect.de. [2003:f6:ef1c:c500:ee59:d953:f148:40ba])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d305351dbsm527719a12.77.2024.06.21.00.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 00:14:32 -0700 (PDT)
Message-ID: <b7283f9458047e63e7d8c8b80daf2bd6232403cb.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Lee Jones <lee@kernel.org>
Date: Fri, 21 Jun 2024 09:18:23 +0200
In-Reply-To: <ZnUnFeum1Z2ahm9M@matsya>
References: <202406191014.9JAzwRV6-lkp@intel.com>
	 <c25aab0d-48f6-4754-b514-d6caf8d51fd1@web.de> <ZnRUSaHJhz7XLcKa@matsya>
	 <20240620170522.GU3029315@google.com> <ZnUnFeum1Z2ahm9M@matsya>
User-Agent: Evolution 3.52.2 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 9A6DC3F68F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[web.de,intel.com,crapouillou.net,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,kernel.org,metafoo.de,linaro.org,lists.linux.dev,lwn.net,inria.fr,infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.42:from,2003:f6:ef1c:c500:ee59:d953:f148:40ba:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6OGRDRCSQWMDEYSL57AGFFN2RGLDIC6L
X-Message-ID-Hash: 6OGRDRCSQWMDEYSL57AGFFN2RGLDIC6L
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Paul Cercueil <paul@crapouillou.net>, Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6OGRDRCSQWMDEYSL57AGFFN2RGLDIC6L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDI0LTA2LTIxIGF0IDEyOjM5ICswNTMwLCBWaW5vZCBLb3VsIHdyb3RlOg0KPiBP
biAyMC0wNi0yNCwgMTg6MDUsIExlZSBKb25lcyB3cm90ZToNCj4gPiBPbiBUaHUsIDIwIEp1biAy
MDI0LCBWaW5vZCBLb3VsIHdyb3RlOg0KPiA+IA0KPiA+ID4gT24gMjAtMDYtMjQsIDEyOjQ1LCBN
YXJrdXMgRWxmcmluZyB3cm90ZToNCj4gPiA+ID4g4oCmDQo+ID4gPiA+ID4gQWxsIGVycm9ycyAo
bmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBkcml2
ZXJzL2lpby9pbmR1c3RyaWFsaW8tYnVmZmVyLmM6MTcxNTozOiBlcnJvcjogY2Fubm90IGp1bXAg
ZnJvbQ0KPiA+ID4gPiA+ID4gPiB0aGlzIGdvdG8gc3RhdGVtZW50IHRvIGl0cyBsYWJlbA0KPiA+
ID4gPiA+IMKgwqDCoCAxNzE1IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IGVycl9kbWFidWZfdW5tYXBfYXR0YWNobWVudDsNCj4gPiA+ID4g4oCmDQo+ID4gPiA+IA0KPiA+
ID4gPiBXaGljaCBzb2Z0d2FyZSBkZXNpZ24gb3B0aW9ucyB3b3VsZCB5b3UgbGlrZSB0byB0cnkg
b3V0IG5leHQNCj4gPiA+ID4gc28gdGhhdCBzdWNoIGEgcXVlc3Rpb25hYmxlIGNvbXBpbGF0aW9u
IGVycm9yIG1lc3NhZ2Ugd2lsbCBiZSBhdm9pZGVkDQo+ID4gPiA+IGZpbmFsbHk/DQo+ID4gPiAN
Cj4gPiA+IFRoZSBvbmUgd2hlcmUgYWxsIGVtYWlscyBmcm9tIE1hcmt1cyBnbyB0byBkZXYvbnVs
bA0KPiA+IA0KPiA+IFBsYXkgbmljZSBwbGVhc2UuDQo+IA0KPiBXb3VsZCBsb3ZlIHRvLi4uIGJ1
dCBNYXJrdXMgaGFzIGJlZW4gcmVwZWF0IG9mZmVuZGVyDQo+IA0KPiBTYWRseSwgSSBhbSB5ZXQg
dG8gc2VlIGEgY29uc3RydWN0aXZlIGFwcHJvYWNoIG9yIGV2ZW4gYmV0dGVyIGEgaGVscGZ1bA0K
PiBwYXRjaCB3aGljaCBpbXByb3ZlIHNvbWV0aGluZywgcmF0aGVyIHRoYW4gdmFndWUgc3VnZ2Vz
dGlvbnMgb24gdGhlIGxpc3QNCj4gDQoNClllYWgsIGp1c3QgbG9vayBhdCBob3cgbWFueSBhdXRv
bWF0aWMgcmVwbGllcyBoZSBnZXQncyBmcm9tIEdyZWcgcHJldHR5IG11Y2gNCnNheWluZyB0byBp
Z25vcmUgaGlzIGNvbW1lbnRzLg0KDQotIE51bm8gU8OhDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
