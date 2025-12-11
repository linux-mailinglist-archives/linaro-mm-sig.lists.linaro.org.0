Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 404EECB760C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 00:25:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05CA13F9BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 23:25:54 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id B46773F6BF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 23:25:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ZNFy2bqE;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4779a4fb9bfso91685e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 15:25:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1765495532; cv=none;
        d=google.com; s=arc-20240605;
        b=dFyyqVNKU7LocasP1xPlFM/U1yW19kwLCXOIQis5cQc3ZbvOVCdLDfUd+Nh6Y6+fM4
         BsP+G7bBJNR7S+03QoQEmkmnvYOgop+iIgfvx4DfPMBwavhay2ylZldKd4Fl4LR8WTtE
         Z9SReBhG5zbfauu6S4H5C2TIiOSpZdZgw/eGe1z6zvU1dtsB8qa3oBSNeET9stmvbUI7
         zfR+NatPZHOmg13sUmb/XVTdSu9XE1tx6wH4xQjAN9LzBRoVBp76K+sOGZVhkPd6LG1N
         6aE78iNriQTeMa8kvq6OTp4GMgO4e1B0lZj8rXwcMoJnk0yu2zm0Mw8q3ADGUMLyRfYR
         cLXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NgAS2i+WuabPCqxlCGTGd0RyAlQOwBDUG294JndQ1+g=;
        fh=vEFuloFHdNqvlvSJtmLuRWWFKptvxbubKjLpyqTct0g=;
        b=Azj00cmpzSxl5zb0U2ESntNs29OofU8UdEUAJEVqDcGv0DEd+iy4SXKctPvVJ9sOPM
         r57WxBDTWEjaQEaJ9PTGxzx7fPdiZ7NJR7R7lfCBHz/fB8hvOA0XPn9aIIWDn1FxytaF
         PAI839+0+LXPBzsiq0xvpzAoinBveYTktLReVkIdN9REghjXPz/0hqDb8+59Iy2HZxHa
         411K8eGW9Psos6GS6o1xFfcN2OdCfMIQsgKy0pwf9WUwpgp4RQY8KDSzS6FyNAIL0r8c
         355FzEJbYwq5DTdKIh2Z9sn5djDjn2DDRpgp3sHn1+jxi829kU7VFSRTE0xA/VyV2zcf
         v4jA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1765495532; x=1766100332; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgAS2i+WuabPCqxlCGTGd0RyAlQOwBDUG294JndQ1+g=;
        b=ZNFy2bqEy2lmlyqYXLEr3j5EERt8/EXcaDJBcweNNUzv/mK/MDvu7k0LukL0CyPoWq
         aLMZD3Djx711a+dhiwI2oCes72tGpKjVvpMqXUiqi4Z7C1Ncod/o3m4NFnzSbPzffykY
         E1DG8MUS09K+1zGUg1deOeR3bSgoJsdNtActuq42toC+4pj5mIrhPhOyNJHdbK9SN65O
         Z1ZveLsyuZ91J6zBJeAk1OgYr3cj/b7l3eWnH4GRFKlQKc5xrQ9cRJc5iqkJH8lsL6cB
         g7zsxum+s4fCikgY+8jlJ7eb4aL7VHCemxgWIXlbHrkVYCr17QNAaSyw8zvnbe5p+2C1
         6u7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495532; x=1766100332;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NgAS2i+WuabPCqxlCGTGd0RyAlQOwBDUG294JndQ1+g=;
        b=Ut8AXa+SUAsj8hkL8TdATmyDd/eRxfOGn2amG1qW9JaW3OUAYX76m4GnkyYI6h0NVf
         pfGwDspCvlPzre+y1D9YHwN9diCbV3PZPvpBZgBPzZ0nt5kyVompS7f5X4sh+9wFpfPJ
         tfGlPRDvvg30Vw5qVQibhRQj9920MZLJqSyI+CY7ielyqUxNHE/tXHfwPh1yLhczvEsy
         Ei3lGAEogcUUTTVkP8kueSsA1N0s50YWSJ7ipKP5a9RSZ+z55ObrA7WMpAkPFbZtvHqK
         4WiBhkpoH1yzJs3YNSNgZIzYSBoHgQYuU3Ob75agDc6ONIy6Y9vLHQTQacnzZQy1AtlF
         vDhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXt8tr/+uARcSqUrcItYMhxa7WGiw3MEv9KsoymEt/DEpU+nLoHmV94U8EXJWqblX5X3HnmPlMIbQrpYF47@lists.linaro.org
X-Gm-Message-State: AOJu0YwPaO9L/epgPYqwWPTQP+T9ygOG1jGgrwghZ7sVaIr6fA/wQgK/
	hQktmFxInif6BjBFch3F3wzWDSyXJ6xvdHKCBwVHYm/A/qctccny1uXedzsv7w2K+FyY3+ezliD
	ScFbVhGbAoTCbLKxl+bE+8TdxuCjdNdKb/JKNpg71
X-Gm-Gg: AY/fxX52TmC2ZmR55u2Sx2CgsTATzNqx9yc9ZsHLJAl8tgKlzr05M9k87j+jmB+rPHS
	fpdb4fsnV4YWYF6A9U9KnXQewKdpebDN4SAe4uBXbEBgNDfaYwsjMyXo4gjFWrHWUiE+TT+2mWw
	dGskzTgJQ9eo3uUP06zwjmNE4dcbWpNkqMWrRzCCXBYMt7E8Qp84y6LR2F7Jr49mYaNbFCdrUbO
	VxO2aJ2vK49svaQDWwR8egiO6AyedyJOtl8uSXKbrXkwmQ2aiuYXAdYg52iy+QCuV+HtvRHtl7n
	9KAz3Z5zakwptdZRSgQH2d6rlMY9
X-Google-Smtp-Source: AGHT+IELsxBEvLr9lhxQI6U6yiPfylzFjjXDhgwGFlEHLwYN/fZlRQWWLcQMcMN3K4irAeygHhzmk1gxOJpHCOinQXk=
X-Received: by 2002:a05:600c:4f0e:b0:477:772e:9b76 with SMTP id
 5b1f17b1804b1-47a8980f35amr1528645e9.7.1765495531556; Thu, 11 Dec 2025
 15:25:31 -0800 (PST)
MIME-Version: 1.0
References: <20251211193106.755485-2-echanude@redhat.com>
In-Reply-To: <20251211193106.755485-2-echanude@redhat.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 12 Dec 2025 08:25:19 +0900
X-Gm-Features: AQt7F2pSTNWKDsucwV-uysbrv-q3tz8hqRtbVQ0Nrt24_BZVepbEChaAJPcQzz0
Message-ID: <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
To: Eric Chanudet <echanude@redhat.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.54:query timed out];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	DNSWL_BLOCKED(0.00)[209.85.128.54:from];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B46773F6BF
X-Spamd-Bar: -----
Message-ID-Hash: LMMH6SJPN5KVOXYQBSYGDPWOUWMPLXYW
X-Message-ID-Hash: LMMH6SJPN5KVOXYQBSYGDPWOUWMPLXYW
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Koenig <christian.koenig@amd.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LMMH6SJPN5KVOXYQBSYGDPWOUWMPLXYW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgNDozMeKAr0FNIEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRl
QHJlZGhhdC5jb20+IHdyb3RlOg0KPg0KPiBUaGUgc3lzdGVtIGRtYS1idWYgaGVhcCBsZXRzIHVz
ZXJzcGFjZSBhbGxvY2F0ZSBidWZmZXJzIGZyb20gdGhlIHBhZ2UNCj4gYWxsb2NhdG9yLiBIb3dl
dmVyLCB0aGVzZSBhbGxvY2F0aW9ucyBhcmUgbm90IGFjY291bnRlZCBmb3IgaW4gbWVtY2csDQo+
IGFsbG93aW5nIHByb2Nlc3NlcyB0byBlc2NhcGUgbGltaXRzIHRoYXQgbWF5IGJlIGNvbmZpZ3Vy
ZWQuDQo+DQo+IFBhc3MgdGhlIF9fR0ZQX0FDQ09VTlQgZm9yIG91ciBhbGxvY2F0aW9ucyB0byBh
Y2NvdW50IHRoZW0gaW50byBtZW1jZy4NCg0KV2UgaGFkIGEgZGlzY3Vzc2lvbiBqdXN0IGxhc3Qg
bmlnaHQgaW4gdGhlIE1NIHRyYWNrIGF0IExQQyBhYm91dCBob3cNCnNoYXJlZCBtZW1vcnkgYWNj
b3VudGVkIGluIG1lbWNnIGlzIHByZXR0eSBicm9rZW4uIFdpdGhvdXQgYSB3YXkgdG8NCmlkZW50
aWZ5IChhbmQgcG9zc2libHkgdHJhbnNmZXIpIG93bmVyc2hpcCBvZiBhIHNoYXJlZCBidWZmZXIs
IHRoaXMNCm1ha2VzIHRoZSBhY2NvdW50aW5nIG9mIHNoYXJlZCBtZW1vcnksIGFuZCB6b21iaWUg
bWVtY2cgcHJvYmxlbXMNCndvcnNlLiA6XA0KDQo+DQo+IFVzZXJzcGFjZSBjb21wb25lbnRzIHVz
aW5nIHRoZSBzeXN0ZW0gaGVhcCBjYW4gYmUgY29uc3RyYWluZWQgd2l0aCwgZS5nOg0KPiAgIHN5
c3RlbWQtcnVuIC0tdXNlciAtLXNjb3BlIC1wIE1lbW9yeU1heD0xME0gLi4uDQo+DQo+IFNpZ25l
ZC1vZmYtYnk6IEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRlQHJlZGhhdC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9o
ZWFwcy9zeXN0ZW1faGVhcC5jDQo+IGluZGV4IDRjNzgyZmUzM2ZkNC4uYzkxZmNkZmY0Yjc3IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPiBAQCAtMzgsMTAgKzM4LDEw
IEBAIHN0cnVjdCBkbWFfaGVhcF9hdHRhY2htZW50IHsNCj4gICAgICAgICBib29sIG1hcHBlZDsN
Cj4gIH07DQo+DQo+IC0jZGVmaW5lIExPV19PUkRFUl9HRlAgKEdGUF9ISUdIVVNFUiB8IF9fR0ZQ
X1pFUk8pDQo+ICsjZGVmaW5lIExPV19PUkRFUl9HRlAgKEdGUF9ISUdIVVNFUiB8IF9fR0ZQX1pF
Uk8gfCBfX0dGUF9BQ0NPVU5UKQ0KPiAgI2RlZmluZSBISUdIX09SREVSX0dGUCAgKCgoR0ZQX0hJ
R0hVU0VSIHwgX19HRlBfWkVSTyB8IF9fR0ZQX05PV0FSTiBcDQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCBfX0dGUF9OT1JFVFJZKSAmIH5fX0dGUF9SRUNMQUlNKSBcDQo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBfX0dGUF9DT01QKQ0KPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgX19HRlBfQ09NUCB8IF9fR0ZQX0FDQ09VTlQpDQo+ICBz
dGF0aWMgZ2ZwX3Qgb3JkZXJfZmxhZ3NbXSA9IHtISUdIX09SREVSX0dGUCwgSElHSF9PUkRFUl9H
RlAsIExPV19PUkRFUl9HRlB9Ow0KPiAgLyoNCj4gICAqIFRoZSBzZWxlY3Rpb24gb2YgdGhlIG9y
ZGVycyB1c2VkIGZvciBhbGxvY2F0aW9uICgxTUIsIDY0SywgNEspIGlzIGRlc2lnbmVkDQo+IC0t
DQo+IDIuNTIuMA0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
