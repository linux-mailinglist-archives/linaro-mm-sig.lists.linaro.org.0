Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 910837B58A8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 19:16:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9327040D72
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 17:16:40 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lists.linaro.org (Postfix) with ESMTPS id 675703E9FC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 17:16:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=JBfborI8;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59f7f2b1036so146359747b3.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Oct 2023 10:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696266997; x=1696871797; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7Zhp7fexBV0fC94HK3n7XG2/Cz9uGTnvzo3kRDXo4Y=;
        b=JBfborI8S/1hbJyo+SjajGfJguhKBZkMN06g0nBOZMoIniPAnFAlzE3UykOB5LruyS
         PEAppWtX3OAuPx5+hG1QXhAKaN4PHtJqBegUKNUAWyJr9p2CWhXnHMm5c2Re+dY9yXS5
         T1CFA/wzQnxni72hqOgOr70WAfuYhIomtnhZCpPjvvMOaay+aZtfD8KqdZMRQFolUqsf
         qjUQ++SgAJkIgap94J7P262P7T2VAOKK7nmn+FkOzlHMQ2cYu2w4Cn5cw/OjENAMKKoG
         EYiWSXr2HijZBOGHrJS/nTS5B499dMFaENeV9nWMbpyxvtaR7UEwpX7VkDSU0WAy7Y2c
         Afqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696266997; x=1696871797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7Zhp7fexBV0fC94HK3n7XG2/Cz9uGTnvzo3kRDXo4Y=;
        b=ue4C2SyCKu/3A1uMPRZVLOnPwouYS/0jojgoMXHJLkGi5PbOYe1Jty+mLIt/wbmKP4
         kyGtvfsjGWxoePuPZSoueLSiinEKWHO/dVHedhniCzPJUZKjy6Hjnzy0iwVuTi0g8bz9
         qZqzomaBnq4CB42oKd8n2u+SLupASmnH513QuqKHtvsZmTlOiDlcImVTpSAMdtQROKup
         GzY65EcE3Ap1nN8OcBzp1fnTpHTFoJwKW5TOwd9qAgcW85RuFZN6tLJrbVczRHO8B19k
         hvnjewDj3zRP4BoEOOEnYGWRjZ7ehy/wryspnUlV/kycu8W3LXUZzLHca3ojYID//3ws
         GTIw==
X-Gm-Message-State: AOJu0YxA0jqLQ06lF3QYN34luq6sO1kZOCY3eEXl4i7Q9wsBC20K9Ebm
	yq3mJ76a7ZJlRREUeijmUedclWos8O1e3fHnPblQrw==
X-Google-Smtp-Source: AGHT+IGczrijvRMqUeno/TKgH4xvzytFv3IKeSpkULE/VT0+zPJxHRO0kz92Wya/ACW5S+oE2CZNgPh4TUBkGNL8H1o=
X-Received: by 2002:a0d:d44c:0:b0:586:b686:822c with SMTP id
 w73-20020a0dd44c000000b00586b686822cmr13050234ywd.7.1696266996808; Mon, 02
 Oct 2023 10:16:36 -0700 (PDT)
MIME-Version: 1.0
References: <bc145167-0471-4ab3-935c-aa5dc20e342a@moroto.mountain>
In-Reply-To: <bc145167-0471-4ab3-935c-aa5dc20e342a@moroto.mountain>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 2 Oct 2023 10:16:24 -0700
Message-ID: <CABdmKX1PsCcRpsnUgwoS9yMhCXcin1bQt6D+N0b2mHP93cmX-A@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.175:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[10];
	URIBL_BLOCKED(0.00)[linaro.org:email];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 675703E9FC
Message-ID-Hash: E4ROZKTIG7Y57DXYJA54E325VRI4SNS4
X-Message-ID-Hash: E4ROZKTIG7Y57DXYJA54E325VRI4SNS4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Fix off by one in cma_heap_vm_fault()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E4ROZKTIG7Y57DXYJA54E325VRI4SNS4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMiwgMjAyMyBhdCAxMjowNOKAr0FNIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAbGluYXJvLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBidWZmZXItPnBhZ2VzW10gaGFzICJi
dWZmZXItPnBhZ2Vjb3VudCIgZWxlbWVudHMgc28gdGhpcyA+IGNvbXBhcmlzb24NCj4gaGFzIHRv
IGJlIGNoYW5nZWQgdG8gPj0gdG8gYXZvaWQgcmVhZGluZyBiZXlvbmQgdGhlIGVuZCBvZiB0aGUg
YXJyYXkuDQo+IFRoZSBidWZmZXItPnBhZ2VzW10gYXJyYXkgaXMgYWxsb2NhdGVkIGluIGNtYV9o
ZWFwX2FsbG9jYXRlKCkuDQo+DQo+IEZpeGVzOiBhNWQyZDI5ZTI0YmUgKCJkbWEtYnVmOiBoZWFw
czogTW92ZSBoZWFwLWhlbHBlciBsb2dpYyBpbnRvIHRoZSBjbWFfaGVhcCBpbXBsZW1lbnRhdGlv
biIpDQo+IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJv
Lm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyB8IDIgKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgYi9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiBpbmRleCBlZTg5OWY4ZTY3MjEuLmJlYTdlNTc0Zjkx
NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gQEAgLTE2NSw3ICsxNjUsNyBA
QCBzdGF0aWMgdm1fZmF1bHRfdCBjbWFfaGVhcF92bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZt
ZikNCj4gICAgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSA9IHZtZi0+dm1hOw0KPiAg
ICAgICAgIHN0cnVjdCBjbWFfaGVhcF9idWZmZXIgKmJ1ZmZlciA9IHZtYS0+dm1fcHJpdmF0ZV9k
YXRhOw0KPg0KPiAtICAgICAgIGlmICh2bWYtPnBnb2ZmID4gYnVmZmVyLT5wYWdlY291bnQpDQo+
ICsgICAgICAgaWYgKHZtZi0+cGdvZmYgPj0gYnVmZmVyLT5wYWdlY291bnQpDQo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gVk1fRkFVTFRfU0lHQlVTOw0KPg0KSGkgRGFuLA0KDQpZb3VyIGZpeCBs
b29rcyBjb3JyZWN0IHRvIG1lLCBidXQgSSdtIGN1cmlvdXMgaWYgeW91IG9ic2VydmVkIHRoaXMN
CnByb2JsZW0gb24gYSBkZXZpY2U/IFRoZSBtbWFwIGluIGRtYS1idWYuYyBsb29rcyBsaWtlIGl0
IHByZXZlbnRzDQpjcmVhdGluZyBhIG1hcHBpbmcgdGhhdCBpcyB0b28gbGFyZ2UsIGFuZCBJIHRo
aW5rIGFuIGFjY2VzcyBiZXlvbmQgdGhlDQpWTUEgc2hvdWxkIHNlZ2ZhdWx0IGJlZm9yZSByZWFj
aGluZyBoZXJlLg0KDQpUaGFua3MsDQpULkouDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
