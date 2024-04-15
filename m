Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E44238A58BD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Apr 2024 19:09:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6D1F3F008
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Apr 2024 17:09:12 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	by lists.linaro.org (Postfix) with ESMTPS id CF4253F008
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Apr 2024 17:09:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b="iQldb/Qc";
	dmarc=none;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 178.60.130.6 as permitted sender) smtp.mailfrom=mcanal@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sg3b+2cNoZ81gja0weDCuFLWo3vrWyU/RMk60odL1I0=; b=iQldb/Qc5xFMnlxYRa7eYPZAi6
	KYStvuJGeFua8kozbQosOm+SP216uX+4uaict3666qyuQoQ4V21n+ytX/3br4w2CAIgTN+smSBC0Q
	DVJDeTF4cagVzUzvKzJdX0v+XAPUMX5TAD94Zq9uD10DcVSc49rC9fdb2vIxPkOn5C3XcboRKSFtr
	v6clGq/fusEfBbToWdUHnCLc6YeuSBtD+AkCrJpS3CkGfMQrjdf+ofy5PbgJzZSTgSTnQIzvLkOkw
	PTkXvp75AINlUlOqJnNEEhxi8COh8Ho0yLVyzmxHK1IHmiAAiff1KZbsQf3Aiw+4uGIAbja4R4qzu
	hesXEnNw==;
Received: from [177.34.169.177] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rwPp8-004qDq-8a; Mon, 15 Apr 2024 19:08:54 +0200
Message-ID: <cb5dbffc-98d7-41e9-8a08-774d1f575b29@igalia.com>
Date: Mon, 15 Apr 2024 14:08:47 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, "T.J. Mercier"
 <tjmercier@google.com>, Tvrtko Ursulin <tursulin@igalia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20240328145323.68872-1-tursulin@igalia.com>
 <CABdmKX3V3HGA4mNQvqHqhcLqyr-A5kJK8v9vmuDybRvV-KsiOg@mail.gmail.com>
 <9a063c39-6d2f-43c3-98b3-e4f8c3c6e9c4@ursulin.net>
 <1e94363a-b449-4efb-b2fe-c1dd710b57c9@amd.com>
 <4342d02c-a180-4a7e-8ef6-4ece51aba946@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xjMEZIsaeRYJKwYBBAHaRw8BAQdAGU6aY8oojw61KS5rGGMrlcilFqR6p6ID45IZ6ovX0h3N
 H01haXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT7CjwQTFggANxYhBDMCqFtIvFKVRJZQ
 hDSPnHLaGFVuBQJkixp5BQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQNI+cctoYVW5u
 GAEAwpaC5rI3wD8zqETKwGVoXd6+AbmGfZuVD40xepy7z/8BAM5w95/oyPsHUqOsg/xUTlNp
 rlbhA+WWoaOXA3XgR+wCzjgEZIsaeRIKKwYBBAGXVQEFAQEHQGoOK0jgh0IorMAacx6WUUWb
 s3RLiJYWUU6iNrk5wWUbAwEIB8J+BBgWCAAmFiEEMwKoW0i8UpVEllCENI+cctoYVW4FAmSL
 GnkFCQWjmoACGwwACgkQNI+cctoYVW6cqwD/Q9R98msvkhgRvi18fzUPFDwwogn+F+gQJJ6o
 pwpgFkAA/R2zOfla3IT6G3SBoV5ucdpdCpnIXFpQLbmfHK7dXsAC
In-Reply-To: <4342d02c-a180-4a7e-8ef6-4ece51aba946@igalia.com>
X-Rspamd-Queue-Id: CF4253F008
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.39 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+ip4:178.60.130.6/32];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:12334, ipnet:178.60.128.0/18, country:ES];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5LYRTWHHEUFE5UHDNODI6NB3JIKKREHN
X-Message-ID-Hash: 5LYRTWHHEUFE5UHDNODI6NB3JIKKREHN
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Do not build debugfs related code when !CONFIG_DEBUG_FS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5LYRTWHHEUFE5UHDNODI6NB3JIKKREHN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgVHZydGtvLA0KDQpPbiA0LzEvMjQgMTA6MjEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiAN
Cj4gT24gMDEvMDQvMjAyNCAxMzo0NSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDAx
LjA0LjI0IHVtIDE0OjM5IHNjaHJpZWIgVHZydGtvIFVyc3VsaW46DQo+Pj4NCj4+PiBPbiAyOS8w
My8yMDI0IDAwOjAwLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+Pj4+IE9uIFRodSwgTWFyIDI4LCAy
MDI0IGF0IDc6NTPigK9BTSBUdnJ0a28gVXJzdWxpbiA8dHVyc3VsaW5AaWdhbGlhLmNvbT4gDQo+
Pj4+IHdyb3RlOg0KPj4+Pj4NCj4+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dXJzdWxpbkB1
cnN1bGluLm5ldD4NCj4+Pj4+DQo+Pj4+PiBUaGVyZSBpcyBubyBwb2ludCBpbiBjb21waWxpbmcg
aW4gdGhlIGxpc3QgYW5kIG11dGV4IG9wZXJhdGlvbnMgDQo+Pj4+PiB3aGljaCBhcmUNCj4+Pj4+
IG9ubHkgdXNlZCBmcm9tIHRoZSBkbWEtYnVmIGRlYnVnZnMgY29kZSwgaWYgZGVidWdmcyBpcyBu
b3QgY29tcGlsZWQgDQo+Pj4+PiBpbi4NCj4+Pj4+DQo+Pj4+PiBQdXQgdGhlIGNvZGUgaW4gcXVl
c3Rpb25zIGJlaGluZCBzb21lIGtjb25maWcgZ3VhcmRzIGFuZCBzbyBzYXZlIA0KPj4+Pj4gc29t
ZSB0ZXh0DQo+Pj4+PiBhbmQgbWF5YmUgZXZlbiBhIHBvaW50ZXIgcGVyIG9iamVjdCBhdCBydW50
aW1lIHdoZW4gbm90IGVuYWJsZWQuDQo+Pj4+Pg0KPj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtv
IFVyc3VsaW4gPHR1cnN1bGluQHVyc3VsaW4ubmV0Pg0KPj4+Pg0KPj4+PiBSZXZpZXdlZC1ieTog
VC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4+Pg0KPj4+IFRoYW5rcyENCj4+
Pg0KPj4+IEhvdyB3b3VsZCBwYXRjaGVzIHRvIGRtYS1idWYgYmUgdHlwaWNhbGx5IGxhbmRlZD8g
VmlhIHdoYXQgdHJlZSBJIA0KPj4+IG1lYW4/IGRybS1taXNjLW5leHQ/DQo+Pg0KPj4gVGhhdCBz
aG91bGQgZ28gdGhyb3VnaCBkcm0tbWlzYy1uZXh0Lg0KPj4NCj4+IEFuZCBmZWVsIGZyZWUgdG8g
YWRkIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIA0KPj4gPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gYXMgd2VsbC4NCj4gDQo+IFRoYW5rcyENCj4gDQo+IE1hYXJ0ZW4gaWYgSSBnb3Qg
aXQgcmlnaHQgeW91IGFyZSBoYW5kbGluZyB0aGUgbmV4dCBkcm0tbWlzYy1uZXh0IHB1bGwgLSAN
Cj4gY291bGQgeW91IG1lcmdlIHRoaXMgb25lIHBsZWFzZT8NCg0KQXBwbGllZCB0byBkcm0tbWlz
Yy9kcm0tbWlzYy1uZXh0IQ0KDQpCZXN0IFJlZ2FyZHMsDQotIE1hw61yYQ0KDQo+IA0KPiBSZWdh
cmRzLA0KPiANCj4gVHZydGtvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
