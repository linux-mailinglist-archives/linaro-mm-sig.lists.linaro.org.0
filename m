Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2159973996
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Sep 2024 16:15:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4466B43FA7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Sep 2024 14:15:14 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 3BE2D40B40
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Sep 2024 14:15:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=zYmSduvC;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.52 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c26852aff1so6526641a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Sep 2024 07:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725977710; x=1726582510; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o12lXWffYA2duKfNkX3xBv+v9fkQ0G/xTm6g4Zkt/HY=;
        b=zYmSduvCXq5l/+2QVq6SyD18WBsqOzzihuF+nXt18LRvvdIRMxUA330Xz0KEvsEPeS
         fGZ5HgreTqHQbctuP0WFK+9OpWHnzGxqkJQERaDZCXZ+qjDy7V0v/ZpfgaJWhlBcWglM
         /kbUqkDRAfazyKpxjpExSmbguz2dLMU4UL3G0zCn2BcgFpkad3RFVF6sduvNs4ZhcpOe
         M2SAznjdPQpGNb42FYZrbO7Ei73pV2b9dlDEkjFZ9Wq6Zhg5rlsxrFngQ+OLoRXOk3Ar
         0QffJSkzmXXytLSXNiSXvCYmuLO3uV5vLhTubCYh/U5n49QOcEv90AzJbuhFxWAPRVp0
         9VJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725977710; x=1726582510;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o12lXWffYA2duKfNkX3xBv+v9fkQ0G/xTm6g4Zkt/HY=;
        b=RUD5tB361IDFj39CQC0pdku2hX+4UsQirjAb2saLh2ExSCdXziel3aQTrSpygIHNGF
         mjaY9C9r7U980ajz44+p3XXe2edk4FV3nI49nFWwB0iaSdtJBpaZz+aHIdjd1L56TGaN
         J7eTQ8dda6pYN1CjtJ0RT43Z3ILPEXMyMLaB1XMfamcfRVvmY81h/UKb0LDYiK6J2U41
         ao3HuGQAK8k5vhoR/qCww8PKv1XfMHwiVQtGFtY1KBodo45RM33wzuU6LOc89iNHW6Cw
         6mzrhKYWT2qAMv9CkXRuH+5XJn7I45zvbf+cZM9hvzrgEJC+dAjIxa0IPEoklK1lfGsk
         fM5Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4kGAzGMvaaO0h/CxVqVLnsEF7slx3yLilHaiFXjVnl9XvDY/hznPUHm0zobEUpeLn5blGeUYRsUB4KxhQ@lists.linaro.org
X-Gm-Message-State: AOJu0Yw+ho+L3oHWk2yqH4/Dtlu6joxednN8lBBGqpSTtLuQpYAWYi5a
	XTJOC4o9TVGicMHu6TbwVRlDbyTEBCX4H8abi1fSUwTUaPuikaBF7WdKNo1xlGyfgWJNHHNx7Cw
	t1bXMKtkEEUeK2Xe4W71czifcC8d3YpcHJ3fkC6Ud
X-Google-Smtp-Source: AGHT+IFNbnJcv991n6EaGeE+4q5VW27Y2Ncf5QyZ9FldTxQk0HrQFWE/YbOvJOp9f8ir/5TrCOSOe0F83sf2QNM8B9w=
X-Received: by 2002:a05:6402:5cd:b0:5c3:cc7d:c29d with SMTP id
 4fb4d7f45d1cf-5c3e95354abmr7741754a12.6.1725977709882; Tue, 10 Sep 2024
 07:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240906000314.2368749-1-tjmercier@google.com> <CANDhNCqudbuWM-WG7jiY_KQfgOZ84nAwWUfUHNzgniBiSZzeyA@mail.gmail.com>
In-Reply-To: <CANDhNCqudbuWM-WG7jiY_KQfgOZ84nAwWUfUHNzgniBiSZzeyA@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 10 Sep 2024 19:44:58 +0530
Message-ID: <CAO_48GES8YytcVyTsm3a_eeL65B41bMnCj=q=e3F6GKg4V-Sew@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ---
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3BE2D40B40
X-Spamd-Result: default: False [-3.95 / 15.00];
	BAYES_HAM(-2.95)[99.79%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.52:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: BN6RXTPRY4ZG73EDJCAAAE4TNHXR44RZ
X-Message-ID-Hash: BN6RXTPRY4ZG73EDJCAAAE4TNHXR44RZ
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Add __init to CMA and system heap module_init functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BN6RXTPRY4ZG73EDJCAAAE4TNHXR44RZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCk9uIEZyaSwgNiBTZXB0IDIwMjQgYXQgMDU6NDcsIEpvaG4gU3R1bHR6IDxqc3R1
bHR6QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBUaHUsIFNlcCA1LCAyMDI0IGF0IDU6MDPi
gK9QTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gPg0KPiA+
IFNocmluayB0aGUga2VybmVsIC50ZXh0IGEgYml0IGFmdGVyIHN1Y2Nlc3NmdWwgaW5pdGlhbGl6
YXRpb24gb2YgdGhlDQo+ID4gaGVhcHMuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPg0KPiBBY2tlZC1ieTogSm9obiBTdHVsdHog
PGpzdHVsdHpAZ29vZ2xlLmNvbT4NCg0KVGhhbmtzIGZvciB0aGUgcGF0Y2g7IHB1c2hlZCB0byBk
cm0tbWlzYy1uZXh0Lg0KDQpCZXN0LA0KU3VtaXQuDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
