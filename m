Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA4E8A6D66
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Apr 2024 16:09:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4C1D3EF6B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Apr 2024 14:09:23 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id EFB9C3EF6B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Apr 2024 14:09:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=ZCii2Ci2;
	dmarc=none;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.182) smtp.mailfrom=nicolas@ndufresne.ca
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-78edc3e7cd9so178485285a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Apr 2024 07:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1713276560; x=1713881360; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NyD7CJia6dqQdPW0B5XtV/th76QRRg/WSyHypuuA1Ic=;
        b=ZCii2Ci2nbejF0+mekzhKho2FzDacJTzdMK+gyTFUZ8qCCxOIg99OUGHGtKDEVb1CV
         9VuuoAAVOOKbNqKHPFNZQunfkIe8UKhl+wKqiJbBSeE4muJfAa/FKbgkRDguzRMwT0Ht
         kr5o0m91OkQBGs1gvVcb9ejDIBL9SxaZf/WKZohpRBHcKzzOa9SQQJiCm50+pZ9GBOvc
         BKWPrXxmlqkHK/H4CRGUE+mtujpStMRYm6M0aSmcOlgaBfnbFIjSZwh9JcyNfHlQuUjk
         aF7ovIWl+lCrx2jVdHslXbNi6Ud+zBYSlF7xy3z/3wiszpIXjWdNP2CMjlsTMcxhCp1x
         9Lag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713276560; x=1713881360;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NyD7CJia6dqQdPW0B5XtV/th76QRRg/WSyHypuuA1Ic=;
        b=ligpprSE6I35CMJjAo0+wMnufoJ194+NKwwtWB3nm++mnqTLHGKi7vCmqr84Mi83aB
         a5IxIs63Na8cQ4CDfc4eP4ztP+g50JdzCjXItDWB8/3j2zJigg6XYxoG3qq6kA2eCluE
         9dmPQHH5Q8LmJzWzOt+u9ItNzx1FUX4VIFk1REfm7e++ZkZFpTo9lPlUOrSfkgNNaUfm
         VL/k75SaSclgUvsaspOWv42QX/or7JOR316zerY6oymmf9ct4pa380ai/xbV7JhVP6n7
         /On0FgWi9kToRMS0EXWQkk3gFQt3Qd9crBvtdedBtrgpFnkygdpAUpZg+Z3LaSI2QYTc
         rknA==
X-Forwarded-Encrypted: i=1; AJvYcCUNTwrvTeFcwByR7SB+8sysJ2IApqLFA/bXdAzCKUjKqq/SoC5m6wfk6GXyHHc1EvDHdd00dXdsDuAufPBkBwKJXLfgdmwFGQSDgQH6KTs=
X-Gm-Message-State: AOJu0YxQOG5y12QP9Z7+nkOFHechcYNgl5nTs6wawkW5bM63xNFffi1+
	CETWwMLuEgNjl2oCp7rQAnXbEi5VNVKyyQAxCH6m9c4S4+SbydyKjnJubIyqaVI=
X-Google-Smtp-Source: AGHT+IHTZXOlhLzrZJKOCo7oGobPLBHBqfpA1Y9jlLfjJ81O6tnjovWTxBF2SvorngJtfMN3Z4Hm+g==
X-Received: by 2002:ad4:44a7:0:b0:69f:f2ae:cad6 with SMTP id n7-20020ad444a7000000b0069ff2aecad6mr1244518qvt.11.1713276560547;
        Tue, 16 Apr 2024 07:09:20 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448::7a9])
        by smtp.gmail.com with ESMTPSA id dd10-20020ad4580a000000b0069b563d5d8fsm6128137qvb.20.2024.04.16.07.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 07:09:20 -0700 (PDT)
Message-ID: <70733fe5c919527796bd3d9735ced522bcdd7a25.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Shawn Sung <shawn.sung@mediatek.com>, Chun-Kuang Hu
	 <chunkuang.hu@kernel.org>
Date: Tue, 16 Apr 2024 10:09:19 -0400
In-Reply-To: <20240403102701.369-2-shawn.sung@mediatek.com>
References: <20240403102701.369-1-shawn.sung@mediatek.com>
	 <20240403102701.369-2-shawn.sung@mediatek.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: EFB9C3EF6B
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.182:from];
	URIBL_BLOCKED(0.00)[mediatek.com:email,ndufresne-ca.20230601.gappssmtp.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,collabora.com,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GDBKMANAIENLHH3T7XJFZPMCFIMVY7XI
X-Message-ID-Hash: GDBKMANAIENLHH3T7XJFZPMCFIMVY7XI
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/9] drm/mediatek/uapi: Add DRM_MTK_GEM_CREATE_ENCRYPTED flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GDBKMANAIENLHH3T7XJFZPMCFIMVY7XI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkxlIG1lcmNyZWRpIDAzIGF2cmlsIDIwMjQgw6AgMTg6MjYgKzA4MDAsIFNoYXduIFN1
bmcgYSDDqWNyaXTCoDoNCj4gRnJvbTogIkphc29uLUpILkxpbiIgPGphc29uLWpoLmxpbkBtZWRp
YXRlay5jb20+DQo+IA0KPiBBZGQgRFJNX01US19HRU1fQ1JFQVRFX0VOQ1JZUFRFRCBmbGFnIHRv
IGFsbG93IHVzZXIgdG8gYWxsb2NhdGUNCg0KSXMgIkVOQ1JZUFRFRCIgYSBwcm9wZXIgbmFtaW5n
ID8gTXkgZXhwZWN0YXRpb24gaXMgdGhhdCB0aGlzIHdvdWxkIGhvbGQgZGF0YSBpbg0KYSBQUk9U
RUNURUQgbWVtb3J5IHJlZ2lvbiBidXQgdGhhdCBubyBjcnlwdG9ncmFwaGljIGFsZ29yaXRobSB3
aWxsIGJlIGludm9sdmVkLg0KDQpOaWNvbGFzDQoNCj4gYSBzZWN1cmUgYnVmZmVyIHRvIHN1cHBv
cnQgc2VjdXJlIHZpZGVvIHBhdGggZmVhdHVyZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphc29u
LUpILkxpbiA8amFzb24tamgubGluQG1lZGlhdGVrLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSHNp
YW8gQ2hpZW4gU3VuZyA8c2hhd24uc3VuZ0BtZWRpYXRlay5jb20+DQo+IC0tLQ0KPiAgaW5jbHVk
ZS91YXBpL2RybS9tZWRpYXRla19kcm0uaCB8IDEgKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9tZWRpYXRla19k
cm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vbWVkaWF0ZWtfZHJtLmgNCj4gaW5kZXggYjBkZWEwMGJh
Y2JjNC4uZTkxMjVkZTNhMjRhZCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9tZWRp
YXRla19kcm0uaA0KPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL21lZGlhdGVrX2RybS5oDQo+IEBA
IC01NCw2ICs1NCw3IEBAIHN0cnVjdCBkcm1fbXRrX2dlbV9tYXBfb2ZmIHsNCj4gIA0KPiAgI2Rl
ZmluZSBEUk1fTVRLX0dFTV9DUkVBVEUJCTB4MDANCj4gICNkZWZpbmUgRFJNX01US19HRU1fTUFQ
X09GRlNFVAkJMHgwMQ0KPiArI2RlZmluZSBEUk1fTVRLX0dFTV9DUkVBVEVfRU5DUllQVEVECTB4
MDINCj4gIA0KPiAgI2RlZmluZSBEUk1fSU9DVExfTVRLX0dFTV9DUkVBVEUJRFJNX0lPV1IoRFJN
X0NPTU1BTkRfQkFTRSArIFwNCj4gIAkJRFJNX01US19HRU1fQ1JFQVRFLCBzdHJ1Y3QgZHJtX210
a19nZW1fY3JlYXRlKQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
