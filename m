Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zfpXBx9fPWpR2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EC16C7A8E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=by1gU48a;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4DEF4410D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:02:21 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 2279D40A4E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 11:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781610494;
	bh=qE69fQEJl9oZRRpURxmwt3lhJuiBveqs8mE/8tXoWvc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=by1gU48aGo9nqyknUPasVL3O8zwdmOHSX+6iTukXhGM4QwwbgMcmcBwDlt9FVkriL
	 pauByJnAOozbCvQg3RBtEUD8n8RMBhTAKH8+sVOTJCrrI9VqYq52pvetzI+uTWTa2L
	 tBBCwIb4mNYaVXhyLp2YszevLUpBDgVVwkYjgK7FqckdGH7AYklacjsIcWZtN2b7ns
	 flSw3OZpkqy7dYIdGgPtzz8pT2RDWXIOG5Eu69Q6kKayjzEURagu2YcQjFLvLho/6r
	 G6QAty/jyShc/7rIKOrNlG5rh8h+XQw5aEdNk5CvO8zMdM2hCXoGoYJFLgUj9F41KM
	 kLYr4Gy13vzyQ==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gflc75zjFz58bH;
	Tue, 16 Jun 2026 21:48:07 +1000 (AEST)
Message-ID: <20fb245b-2dc3-482a-8c2c-a3a6864a9005@ozlabs.org>
Date: Tue, 16 Jun 2026 12:48:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-3-matt@ozlabs.org>
 <DM6PR11MB369091A6F1E32054A95AB6788C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <4d75b948-3b74-4970-97f2-72e54f9c9694@ozlabs.org>
 <DM6PR11MB36903B0203CFFF97197676138CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <DM6PR11MB36903B0203CFFF97197676138CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PHVKRZUFH6ZYJNYIXAHOBTZCU22KGVZC
X-Message-ID-Hash: PHVKRZUFH6ZYJNYIXAHOBTZCU22KGVZC
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:01:20 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PHVKRZUFH6ZYJNYIXAHOBTZCU22KGVZC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[221];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kevin.tian@intel.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4EC16C7A8E

SGkgS2V2aW4sDQoNCk9uIDE2LzA2LzIwMjYgMTA6MjgsIFRpYW4sIEtldmluIHdyb3RlOg0KPj4g
RnJvbTogTWF0dCBFdmFucyA8bWF0dEBvemxhYnMub3JnPg0KPj4gU2VudDogVHVlc2RheSwgSnVu
ZSAxNiwgMjAyNiAyOjA0IEFNDQo+Pg0KPj4gT24gMTIvMDYvMjAyNiAwOTo0MiwgVGlhbiwgS2V2
aW4gd3JvdGU6DQo+Pj4+IEZyb206IE1hdHQgRXZhbnMgPG1hdHRAb3psYWJzLm9yZz4NCj4+Pj4g
U2VudDogV2VkbmVzZGF5LCBKdW5lIDEwLCAyMDI2IDExOjQzIFBNDQo+Pj4+DQo+Pj4+ICtpbnQg
dmZpb19wY2lfZG1hX2J1Zl9maW5kX3BmbihzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJpdiwN
Cj4+Pj4gKwkJCSAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KPj4+PiArCQkJICAg
ICAgdW5zaWduZWQgbG9uZyBhZGRyZXNzLA0KPj4+PiArCQkJICAgICAgdW5zaWduZWQgaW50IG9y
ZGVyLA0KPj4+PiArCQkJICAgICAgdW5zaWduZWQgbG9uZyAqb3V0X3BmbikNCj4+Pj4gK3sNCj4+
Pj4gWy4uLl0NCj4+Pj4gKwkgKg0KPj4+PiArCSAqIEl0J3Mgc3Vib3B0aW1hbCBpZiBETUFCVUZz
IGFyZSBjcmVhdGVkIHdpdGggbmVpZ2JvdXJpbmcNCj4+PiBzL25laWdib3VyaW5nL25laWdoYm9y
aW5nLw0KPj4gQWgsIG5vdCBhIHR5cG8uIPCfmYIgIFRoYXQgaXMgZW5fR0IgYW5kIEFGQUlLIGlz
IHBlcm1pdHRlZC4NCj4gSSBndWVzcyB5b3UgbWVhbnQgJ25laWdoYm91cmluZycgYW5kICduZWln
aGJvcmluZycgYXJlIGJvdGggdmFsaWQuDQo+IA0KPiBidXQgaGVyZSBsYWNraW5nIGEgJ2gnIHNo
b3VsZCBiZSBhIHR5cG8/IPCfmYINCg0KOkQgRG9oISAgU3VyZSBlbm91Z2gsIHlvdSdyZSByaWdo
dCBhbmQgdGhhdCB2ZXJ5IG11Y2ggX2lzXyBhIHR5cG8gYWZ0ZXINCmFsbC4gOikNCg0KDQpUaGFu
a3MsDQoNCk1hdHQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
