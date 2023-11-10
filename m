Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ACA7E868F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:20:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C08440FF8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:20:57 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id C5D8240FFA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:19:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lBPJ+8HO;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AEF3DCE16DE;
	Fri, 10 Nov 2023 23:19:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA104C433C8;
	Fri, 10 Nov 2023 23:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658395;
	bh=WhEv7XhK+t86jf2iy5v/8j4Xu6HVlv6Bu7i7eHf+DcQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lBPJ+8HOTH+QZNkBBNnj3QzSJF+Y0eeL633p3vyJ/AvYHNIDs0ZyxBh1HUUxvu9ww
	 Kdu7kCnZfMUZoATzyYeJ8lNCkvs07MFihtPxdJEhv45ubQ6Sg12r35L3sD7WJFaVC5
	 FnCdIKAN5XL16RbE2J6mU4B3ESUlTgRMADYoBsRUdmUdqK1cbk5xhmoYrtZkOB5Vmx
	 urqguJR3yAIfYDyKO0uuN4NC0w4Ec54bVQQya+ceeb9+iRPVuWbuxKTtVtNOrDCW1M
	 gMq1zXrVv6VEbQv/zkG0wJQD4dnri/rEc5t6BPhuLd5CyaLW/Q9gizTFwrQT37mB4S
	 FGagW5ESHEB4Q==
Date: Fri, 10 Nov 2023 15:19:53 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231110151953.75c03297@kernel.org>
In-Reply-To: <20231106024413.2801438-5-almasrymina@google.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-5-almasrymina@google.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C5D8240FFA
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,davemloft.net,google.com,redhat.com,kernel.org,linaro.org,arndb.de,gmail.com,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LMEREDSEK3UCO4TZGPSIDNTGZCVHTAHN
X-Message-ID-Hash: LMEREDSEK3UCO4TZGPSIDNTGZCVHTAHN
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Willem de Bruijn <willemb@google.com>, Kaiyuan Zhang <kaiyuanz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 04/12] netdev: support binding dma-buf to netdevice
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LMEREDSEK3UCO4TZGPSIDNTGZCVHTAHN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCAgNSBOb3YgMjAyMyAxODo0NDowMyAtMDgwMCBNaW5hIEFsbWFzcnkgd3JvdGU6DQo+
IC0tLSBhL2luY2x1ZGUvbGludXgvbmV0ZGV2aWNlLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9u
ZXRkZXZpY2UuaA0KPiBAQCAtNTIsNiArNTIsOCBAQA0KPiAgI2luY2x1ZGUgPG5ldC9uZXRfdHJh
Y2tlcnMuaD4NCj4gICNpbmNsdWRlIDxuZXQvbmV0X2RlYnVnLmg+DQo+ICAjaW5jbHVkZSA8bmV0
L2Ryb3ByZWFzb24tY29yZS5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3hhcnJheS5oPg0KPiArI2lu
Y2x1ZGUgPGxpbnV4L3JlZmNvdW50Lmg+DQo+ICANCj4gIHN0cnVjdCBuZXRwb2xsX2luZm87DQo+
ICBzdHJ1Y3QgZGV2aWNlOw0KPiBAQCAtODA4LDYgKzgxMCw4NCBAQCBib29sIHJwc19tYXlfZXhw
aXJlX2Zsb3coc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgdTE2IHJ4cV9pbmRleCwgdTMyIGZsb3df
aWQsDQo+ICAjZW5kaWYNCj4gICNlbmRpZiAvKiBDT05GSUdfUlBTICovDQo+ICANCj4gK3N0cnVj
dCBuZXRkZXZfZG1hYnVmX2JpbmRpbmcgew0KDQpTaW1pbGFyIG5pdHBpY2sgdG8gdGhlIHNrYnVm
Zi5oIGNvbW1lbnQuIFRha2UgdGhpcyBzb21ld2hlcmUgZWxzZSwNCnBsZWFzZSwgaXQgZG9lc24n
dCBuZWVkIHRvIGJlIGluY2x1ZGVkIGluIG5ldGRldmljZS5oDQoNCj4gKwlzdHJ1Y3QgbmV0ZGV2
X2RtYWJ1Zl9iaW5kaW5nICpyYmluZGluZzsNCg0KdGhlICdyJyBpbiByYmluZGluZyBzdGFuZHMg
Zm9yIHJ4PyDwn6SU77iPDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
