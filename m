Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 57yRHFRgPWq62AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 228256C7B34
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=n48ij9Sl;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27D70445B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:07:31 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 931D8402CB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 08:25:04 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-49241a577d8so27002715e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 01:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782203103; x=1782807903; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqWt0bI44jas3c/HR//JGgX6WMjaPFSRIYH+iY3eOF4=;
        b=n48ij9SliTeCMQjB7jzNAzWHC6SIpnk+7lv5ii5SQ/RW373zlW8uVmYpXykTMSfZj2
         GYkQPz8Ac7rJUhKY3yE2MMs6xICLoseJQsJ6ZyMHFNl1Zo8KUYcvI9CTls2ZQty0kauV
         kjQFfmscj47RITw0y4AY+Ug+lH23GdIWMJFdciqhPOMg8auzzZLapc87z7r2ljKn1I0J
         ObeFUgYrfWE6iS04kBEH4tzihO4IW8lNP5LCNIzoqz3EyX2jzovMFo5MxGKT8tF7DQuk
         2LMBdD1mZvw7boKRzTe+X3QA/nL5smmnIGJDS01JDAYcSDeOeNpgpPZPblWZg1xGt8ha
         xTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782203103; x=1782807903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XqWt0bI44jas3c/HR//JGgX6WMjaPFSRIYH+iY3eOF4=;
        b=PcMYEKVmU2q8OeRXp2/Smc/LKD00hLb7TfBIUfN7RKAhXS3uGtC25ntVRpBHdeLotF
         P1xIbSpb9DzKrpU76AcjRBJS8GNYG6A6h2ydZkU5l8SJPZKLXzNEPbIZN0xJZ0cp8aP1
         SpVeByVNxoASOsYskpxuznDQifP22hQsDBwANTEgDTpOQdy0uAYZv5BqJHeaqISHdsrU
         JUqpF1IZtCETYEH0S2PtF5x1VTDfGXeG88IY4iYGXOXfQgqFr1vHtPXDebi1WvYbifkc
         97NW7itUPKIYNvS3+aeyvlY1A/M6gwqgYUfZFMDlts9XNX9S10x+/+6cowujJbqsuNHn
         RIJg==
X-Forwarded-Encrypted: i=1; AFNElJ8VsSDYn+aM4czrc8Fq3FCQj/c6N7Z76yRX2R+oPmMzrxXfccz6pA0zbXbyZo0ZYJffjeYM5l5ji03D27Hp@lists.linaro.org
X-Gm-Message-State: AOJu0YyuNwxSQ7IvRxbz6BW0k1AamA2OgqtqgWCyvUjDmuOeRF3FvKN6
	/NDnhrdFQbEvlzFFWzfdA2xB6D2V9MREMkhQtA+hXBQ7PHfFDmnxjQSw
X-Gm-Gg: AfdE7ckckIvfxPo55ftJ6OR0ZEiur5Mk/hqGBtFUkRsZ/eNtrcXYIgcV/3rnN1d9DxH
	p8lmmHIg0Bu9z6kb0S28EqWonIYSM81vS/TP47/upwnXl3kYoJI/Jjw5+njut6ks+WxDYsrTwc+
	rYonwmEA8KQPGdhIhi98HTvkg4I0wEANRrKOCFGe2L95ap5U61nPU3Fr5rjcaYhgfpTV2pOJlM5
	80WeDhBGvXM52buKFiFU0vNKJbeTFMRXQdEqLKn0ndzR3Tr08ATXg8oF9VQdfwfp3/70K4oiwjF
	iLiKLSvoKnGWUpjM6CAecGBEVnZWCb6gC/VhGOsNFZ+na+tFPz18CQ1yQdo+kReysIZUMAO09Am
	TFY2EA6C7nC2uklMao23H/8eoHsCsbjUmLxfLH9rXnUmd70bhPwY6pue4pj+28Tidg/AnhjeRJh
	R1bCsFC8lNTIawBlqX0/SZJUYZCPuPbTr2GUdWnoKTtIcEX/tHcg==
X-Received: by 2002:a05:600c:348f:b0:492:4636:87ae with SMTP id 5b1f17b1804b1-492463687d1mr271367215e9.17.1782203103276;
        Tue, 23 Jun 2026 01:25:03 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4924923c862sm262149435e9.7.2026.06.23.01.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 01:25:02 -0700 (PDT)
Date: Tue, 23 Jun 2026 09:25:01 +0100
From: David Laight <david.laight.linux@gmail.com>
To: David Hu <xuehaohu@google.com>
Message-ID: <20260623092501.17bef195@pumpkin>
In-Reply-To: <CAPd9Lg9+d=Rw4230FdcMFd0VYfyhXhD=eju53iURR8c61iXsWw@mail.gmail.com>
References: <20260621222130.1667453-1-xuehaohu@google.com>
	<20260622091344.794e0d74@pumpkin>
	<CAPd9Lg9+d=Rw4230FdcMFd0VYfyhXhD=eju53iURR8c61iXsWw@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KZWIWHNZGN3YPW7N5N26C4AWW47ZRMQG
X-Message-ID-Hash: KZWIWHNZGN3YPW7N5N26C4AWW47ZRMQG
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, sashiko-bot <sashiko-bot@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Split sgl by largest page-aligned chunk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KZWIWHNZGN3YPW7N5N26C4AWW47ZRMQG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	DATE_IN_PAST(1.00)[56];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 228256C7B34

T24gTW9uLCAyMiBKdW4gMjAyNiAxNzoyNjoxMCAtMDQwMA0KRGF2aWQgSHUgPHh1ZWhhb2h1QGdv
b2dsZS5jb20+IHdyb3RlOg0KDQo+IE9uIE1vbiwgSnVuIDIyLCAyMDI2IGF0IDQ6MTPigK9BTSBE
YXZpZCBMYWlnaHQNCj4gPGRhdmlkLmxhaWdodC5saW51eEBnbWFpbC5jb20+IHdyb3RlOg0KPiA+
ICANCj4gDQo+IEhpIERhdmlkLA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHJldmlldy4gWW91
IHJhaXNlZCBtYW55IGdvb2QgcG9pbnRzIHJlZ2FyZGluZw0KPiBvcHRpbWl6YXRpb25zIGhlcmUu
IEknbGwgc3dpdGNoIHRvIHVzaW5nIDJHIGFzIHRoZSBtYXggZW50cnkgc2l6ZQ0KPiAoYFNaXzJH
YCBmcm9tIGBsaW51eC9zaXplcy5oYCksIGFuZCByZW1vdmUgZGl2aXNpb25zIGFuZA0KPiBtdWx0
aXBsaWNhdGlvbnMuIEknbGwgYWxzbyByZXBsYWNlIHRoZSBgZm9yKClgIGxvb3Agd2l0aCBgd2hp
bGUNCj4gKGxlbmd0aClgLCBhbmQgZHJvcCBgbWluX3QoKWAgaW4gZmF2b3Igb2YgYG1pbigpYCBi
eSBjYXN0aW5nIGBTWl8yR2ANCj4gdG8gYHNpemVfdGAuDQoNCllvdSBzaG91bGRuJ3QgbmVlZCBh
IGNhc3QgYXQgYWxsLg0KDQoJRGF2aWQgTC4NCg0KPiBJJ2xsIHNlbmQgb3V0IGEgdjIgd2l0aCB0
aGVzZSBjaGFuZ2VzIHNob3J0bHkuDQo+IA0KPiBUaGFua3MsDQo+IERhdmlkDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
