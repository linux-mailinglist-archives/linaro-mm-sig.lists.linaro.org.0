Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B44356D60EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 14:40:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AAF43EB81
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 12:40:32 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id E5D1E3E966
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Mar 2023 09:41:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=IA2jSXiD;
	spf=pass (lists.linaro.org: domain of andrzej.p@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=andrzej.p@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 480DF6603130;
	Fri, 31 Mar 2023 10:41:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680255661;
	bh=5/vUvHtI483hEvXzPFjmdM6/v042ox+SyVhBgPweyfc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IA2jSXiD9Eg2q7EqsltfuzR7o8zucquaK7dqov/Bwn+/7znsoAAgHEtq0V+qw8Agp
	 eFeXdCAFoJBi1qQxbFQ9x0VM9ahpwftaBV2xQ5KdrEDad6aCnaZ0/AIgbacMfwidah
	 UCeSlR1vyfPuw1ssQjzIJNIbAUgSug848qdbPWF4PicQDHegHfbW5RSNbRi1jni0Px
	 XvHKHNwuNijFnssPm05PCGDycybOjNIQR9Wwt1b71Whm9hZfsHKLjmzGTap1qRXNvI
	 xRq0v+jdw7MV1XbnL0nZLjGOWsm8/AKpoeQ05Yd5xn2SuN2uB9S7+JxuwvQQ93o+xB
	 74x2xGtsCHmew==
Message-ID: <c6ce737d-25cc-7f22-7c0f-c0ba1420e57d@collabora.com>
Date: Fri, 31 Mar 2023 11:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Paul Cercueil <paul@crapouillou.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20230322092118.9213-1-paul@crapouillou.net>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230322092118.9213-1-paul@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E5D1E3E966
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[194.146.248.75:received];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: andrzej.p@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PZ55HJPD54NQW4WESIOKXKOKGXFGDIHP
X-Message-ID-Hash: PZ55HJPD54NQW4WESIOKXKOKGXFGDIHP
X-Mailman-Approved-At: Tue, 04 Apr 2023 12:40:22 +0000
CC: michael.hennerich@analog.com, nuno.sa@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PZ55HJPD54NQW4WESIOKXKOKGXFGDIHP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgUGF1bCwNCg0KVyBkbml1IDIyLjAzLjIwMjMgb8KgMTA6MjEsIFBhdWwgQ2VyY3VlaWwgcGlz
emU6DQo+IEhpLA0KPiANCj4gVGhpcyBzbWFsbCBwYXRjaHNldCBhZGRzIHRocmVlIG5ldyBJT0NU
THMgdGhhdCBjYW4gYmUgdXNlZCB0byBhdHRhY2gsDQo+IGRldGFjaCwgb3IgdHJhbnNmZXIgZnJv
bS90byBhIERNQUJVRiBvYmplY3QuDQo+IA0KPiBDaGFuZ2VzIHNpbmNlIHYxOg0KPiAtIHBhdGNo
IFsyLzNdIGlzIG5ldy4gSSBoYWQgdG8gcmV1c2UgYSBwaWVjZSBvZiBjb2RlIHRoYXQgd2FzIGFs
cmVhZHkNCj4gICAgZHVwbGljYXRlZCBpbiB0aGUgZHJpdmVyLCBzbyBJIGZhY3Rvcml6ZWQgdGhl
IGNvZGUuDQo+IC0gTWFrZSBmZnNfZG1hX3Jlc3ZfbG9jaygpIHN0YXRpYw0KPiAtIEFkZCBNT0RV
TEVfSU1QT1JUX05TKERNQV9CVUYpOw0KPiAtIFRoZSBhdHRhY2gvZGV0YWNoIGZ1bmN0aW9ucyBh
cmUgbm93IHBlcmZvcm1lZCB3aXRob3V0IGxvY2tpbmcgdGhlDQo+ICAgIGVwc19sb2NrIHNwaW5s
b2NrLiBUaGUgdHJhbnNmZXIgZnVuY3Rpb24gc3RhcnRzIHdpdGggdGhlIHNwaW5sb2NrDQo+ICAg
IHVubG9ja2VkLCB0aGVuIGxvY2tzIGl0IGJlZm9yZSBhbGxvY2F0aW5nIGFuZCBxdWV1ZWluZyB0
aGUgVVNCDQo+ICAgIHRyYW5zZmVyLg0KPiANCg0KQ2FuIHlvdSBzaGFyZSBhbiBleGFtcGxlIHVz
ZSBjYXNlIGZvciB0aGVzZSBuZXcgZmVhdHVyZXM/DQpJcyB0aGVyZSBhIHVzZXJzcGFjZSB0aGF0
IGV4Y2VyY2lzZXMgdGhlIG5ldyBpb2N0bHM/DQoNClJlZ2FyZHMsDQoNCkFuZHJ6ZWoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
