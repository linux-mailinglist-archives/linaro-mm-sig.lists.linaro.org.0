Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IMkLmgX8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:36:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E779495E38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:36:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E30BF3F80C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:36:14 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 74D4B404C1
	for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 22:04:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WtsfgZ0Z;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4890d945eb4so47191665e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 15:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777241050; x=1777845850; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TOSUyfe/TldkyeaDzXd5HdT1X+MuNFQMhpVSGu+NHxw=;
        b=WtsfgZ0ZGksEonfhaYU6jOw6K0s8soU0fi0ug2TCfPLEWuopbeTSHj8YPAZ0m4OcuZ
         btq45/3DV0tSnoqooQhGRAgRi7n4xXctLu/xwV5fk41ySscv05KIAFqmUaO/pJRvLewx
         Wk6LI4dyTuUA0iis3MZgCgnDTozI2h5f4075FhWmQ+e41PQUBX1i8JEMjyYizYkbkfMC
         Lr59NM8a/BiABy4o8lEUfyHfFDUH6Awryr5YORcxAH3Q5KlOsylh2GH/bZr+d3wY5MjA
         Go7Q0RQGJcNyhwq6dwzKIIQNb0AgvjDo4SuJnZorl3/hQ7nXoWOv4BircQCtsDQEMZ5Q
         NOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777241050; x=1777845850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TOSUyfe/TldkyeaDzXd5HdT1X+MuNFQMhpVSGu+NHxw=;
        b=ohEasQlUM4dt1zZKwXpsECWQPbdsvtSB0IZH1V3zynYEe3MjOK30rZJgT2PP0pQrJ8
         c79WFLZf1FDzTL9g3E8o5DrD6lC9L4Pe5kx6Hzv3NAbe/2nrjetcr97BJaX7V/Rd1LE8
         qO4eIc+cPoeBkAiJT21brrwLtZYCLCyuIctUq12FBFkuW6FSFJaGUbGzFkSIPJK56Rfb
         QPQDRtfCyYKtllQgpgelZPVNf8DQkGDvb86nn/5oHISFWgwvGcv3gicODFU3z3rOOHxF
         +hd5SfFrOK8u5rfoLh+bm5TFYLt+Unk10wkIyCgF+nmcKWFwmbdfF1rKJJGy2KaPK5bv
         XdwA==
X-Forwarded-Encrypted: i=1; AFNElJ/C60md52r+5fqypjRQUPwlu+H9BhUFtQCmFWMjOecRtI6VxJqbqtRdD+hoZf/GrXH7J5Dn75EbSvN9fywo@lists.linaro.org
X-Gm-Message-State: AOJu0YxnTuboVAVYODMhrfCmFOXzadS6QZZzf6x1iTcbe0pwcMr6clOU
	/x9sQJgH20M2T84CP5trQrmhMtzl8LHinLkh3hJGGQ+m/fpQBwU5k4Ex
X-Gm-Gg: AeBDieuKPPYVs4hHqgZlhbfjlbvCyOCM8GVl89kbeTovc8cRusdebsuO8Mnn0gdK8n7
	5JZXwftHbmTq0+ZHyoXFI3+XTww92xo+sZwep2Z3nvV1P088acwhavFLXcKcVuOYiafDz3NaXi/
	Fo5hLNZh3ownPu0hIdb7WG9fVyARk8vj2TCkr+ZWLjQSQNj5ztqZDLLrCAbxolcg3mkq+OZ/WYi
	lg1vPZcshIpIThJaCe+hcfi23k1HNoeb/Kdl1JVndEmdDYTZu7FMPh+QoK/uZ++54IHNlq4afnF
	Iqgh/J+d3j0PO9b1X/nqWCbZAOzTpNN9F0LRIi1AzC6TqZnz0WrcC/NUVnzh+Vs/Cum86OXUq3d
	WwMOeLYNHaHJPI1v/lEHLv2W45Ly4y3sQaF0a8h17DaufNka3WfFk1ovp6CJ1/3zKxXvT9yExir
	0Xkg89VzK827BdIPW3EgaAWtoku/Qlb48Vc5NpHpv3gGpwGhznPIQgSa4feI8uPNRkMQqa79XaS
	nA=
X-Received: by 2002:a05:600c:3150:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-488fb8b9debmr118860245e9.13.1777241050182;
        Sun, 26 Apr 2026 15:04:10 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a55743c06sm137051075e9.2.2026.04.26.15.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 15:04:09 -0700 (PDT)
Date: Sun, 26 Apr 2026 23:04:08 +0100
From: David Laight <david.laight.linux@gmail.com>
To: "Gary Guo" <gary@garyguo.net>
Message-ID: <20260426230408.489c68c3@pumpkin>
In-Reply-To: <DI35IFD8M019.2WGRH5ADW6NOG@garyguo.net>
References: <20260424054742.45832-1-mkchauras@gmail.com>
	<20260424054742.45832-6-mkchauras@gmail.com>
	<DI1E781QPU8F.1C28PL0089NP6@garyguo.net>
	<ae3C2gqzoVaovY-h@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
	<DI35IFD8M019.2WGRH5ADW6NOG@garyguo.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F5W4VS6TMP5WU2XFGYP3BMCQT7K4VQ36
X-Message-ID-Hash: F5W4VS6TMP5WU2XFGYP3BMCQT7K4VQ36
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:25:50 +0000
CC: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F5W4VS6TMP5WU2XFGYP3BMCQT7K4VQ36/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 5E779495E38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[64];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.506];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,garyguo.net:email]

T24gU3VuLCAyNiBBcHIgMjAyNiAxNToyMDozMSArMDEwMA0KIkdhcnkgR3VvIiA8Z2FyeUBnYXJ5
Z3VvLm5ldD4gd3JvdGU6DQoNCj4gT24gU3VuIEFwciAyNiwgMjAyNiBhdCA4OjUyIEFNIEJTVCwg
TXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgd3JvdGU6DQo+ID4gT24gRnJpLCBBcHIgMjQsIDIwMjYg
YXQgMDE6NDM6NDNQTSArMDEwMCwgR2FyeSBHdW8gd3JvdGU6ICANCj4gPj4gT24gRnJpIEFwciAy
NCwgMjAyNiBhdCA2OjQ3IEFNIEJTVCwgTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgKElCTSkgd3Jv
dGU6ICANCj4gPj4gPiBGcm9tOiBMaW5rIE1hdXZlIDxsaW5rbWF1dmVAbGlua21hdXZlLmZyPg0K
PiA+PiA+DQo+ID4+ID4gVGhlIGNvcmUgY3JhdGUgY3VycmVudGx5IGRlcGVuZHMgb24gdGhlc2Ug
dHdvIGZ1bmN0aW9ucyBmb3IgaTY0L3U2NC8NCj4gPj4gPiBpMTI4L3UxMjgvY29yZTo6dGltZTo6
RHVyYXRpb24gZm9ybWF0dGluZywgYnV0IHdlIHNob3VsZG7igJl0IHVzZSB0aGF0IGluDQo+ID4+
ID4gdGhlIGtlcm5lbCBzbyBsZXTigJlzIHBhbmljIGlmIHRoZXkgYXJlIGV2ZXIgY2FsbGVkLg0K
PiA+PiA+DQo+ID4+ID4gVGhpcyBkb2VzbuKAmXQgeWV0IGZpeCBkcm1fcGFuaWNfcXIucnMsIHdo
aWNoIGFsc28gdXNlcyBfX3VkaXZkaTMgd2hlbg0KPiA+PiA+IENPTkZJR19DQ19PUFRJTUlaRV9G
T1JfU0laRT15LCBidXQgYXQgbGVhc3QgbWFrZXMgdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbA0KPiA+
PiA+IGJ1aWxkIG9uIFBQQzMyLiAgDQo+ID4+IA0KPiA+PiBDYW4gd2UgYWx3YXlzIGJ1aWxkIGxp
YmNvcmUgd2l0aCBgLUMgb3B0LWxldmVsPTJgIGV2ZW4gaWYNCj4gPj4gYENPTkZJR19DQ19PUFRJ
TUlaRV9GT1JfU0laRWAgaXMgc3BlY2lmaWVkPyBJdCBmZWVscyBsaWtlIGEgYmV0dGVyIGZpeCB0
aGFuDQo+ID4+IHN0dWJiaW5nIHRoaW5ncyBvdXQuDQo+ID4+IA0KPiA+PiBCZXN0LA0KPiA+PiBH
YXJ5DQo+ID4+ICAgDQo+ID4gVGhlIGlzc3VlIGlzIG5vdCBjb21pbmcgZnJvbSBsaWJjb3JlIGl0
c2VsZi4gSXQncyB0aGUgZHJpdmVyIHRoYXQncw0KPiA+IGNhdXNpbmcgdGhpcy4gIA0KPiANCj4g
U29ycnkuIEkgcXVvdGVkIHRoZSB3cm9uZyBwYXJ0LiBJIHdhcyBhc2tpbmcgaWYgY29tcGlsaW5n
IGxpYmNvcmUgd2l0aCBPMiBnZXRzDQo+IHJpZCBvZiBpdHMgdXNlIG9mIHRoZSBidWlsdGlucywg
YXMgdGhhdCdzIHdoYXQgdGhlIGNoYW5nZSB0aGlzIGNvbW1pdCBpcyBmb3IuDQo+IA0KPiBGb3Jt
YXR0aW5nIG9mIHU2NCB3aWxsIGJlIG5lZWRlZCwgc28gd2Ugc2hvdWxkIG1ha2Ugc3VyZSB0aGF0
IHRoZXNlIHdvcmtzIGFzDQo+IGludGVuZGVkLg0KDQpUaGlzIGNvZGUgKGZyb20gbm9saWJjKSB3
aWxsIGNvbnZlcnQgdTY0IHRvIGFzY2lpIGluIGFueSBiYXNlOg0KDQojZGVmaW5lIF9VNjRUT0Ff
UkVDSVAoYmFzZSkgKChiYXNlKSAmIDEgPyB+MHVsbCAvIChiYXNlKSA6ICgxdWxsIDw8IDYzKSAv
ICgoYmFzZSkgLyAyKSkNCnN0YXRpYyBpbnQgX3U2NHRvYV9iYXNlKHU2NCBpbiwgY2hhciAqYnVm
ZmVyLCB1bnNpZ25lZCBpbnQgYmFzZSwgdTY0IHJlY2lwKQ0Kew0KCXVuc2lnbmVkIGludCBkaWdp
dHMgPSAwOw0KCXVuc2lnbmVkIGludCBkaWc7DQoJdTY0IHE7DQoJY2hhciAqcDsNCiANCgkvKiBH
ZW5lcmF0ZSBsZWFzdCBzaWduaWZpY2FudCBkaWdpdCBmaXJzdCAqLw0KIAlkbyB7DQoNCiNpZiBk
ZWZpbmVkKF9fU0laRU9GX0lOVDEyOF9fKSAmJiAhZGVmaW5lZChfX21pcHNfXykNCgkJcSA9ICgo
dW5zaWduZWQgX19pbnQxMjgpaW4gKiByZWNpcCkgPj4gNjQ7DQojZWxzZQ0KCQl1NjQgcCA9ICh1
MzIpaW4gKiAocmVjaXAgPj4gMzIpOw0KCQlxID0gKGluID4+IDMyKSAqIChyZWNpcCA+PiAzMikg
KyAocCA+PiAzMik7DQoJCXAgPSAodTMyKXAgKyAoaW4gPj4gMzIpICogKHUzMilyZWNpcDsNCgkJ
cSArPSBwID4+IDMyOw0KI2VuZGlmDQoJCWRpZyA9IGluIC0gcSAqIGJhc2U7DQoJCS8qIENvcnJl
Y3QgZm9yIGFueSByb3VuZGluZyBlcnJvcnMgKi8NCgkJaWYgKGRpZyA+PSBiYXNlKSB7DQoJCQlk
aWcgLT0gYmFzZTsNCgkJCXErKzsNCiAJCX0NCg0KCQlpZiAoZGlnID4gOSkNCgkJCWRpZyArPSAn
YScgLSAnMCcgLSAxMDsNCgkJYnVmZmVyW2RpZ2l0cysrXSA9ICcwJyArIGRpZzsNCgl9IHdoaWxl
ICgoaW4gPSBxKSk7DQogDQogCWJ1ZmZlcltkaWdpdHNdID0gMDsNCg0KCS8qIE9yZGVyIHJldmVy
c2UgdG8gcmVzdWx0ICovDQoJZm9yIChwID0gYnVmZmVyICsgZGlnaXRzIC0gMTsgcCA+IGJ1ZmZl
cjsgYnVmZmVyKyssIHAtLSkgew0KCQlkaWcgPSAqYnVmZmVyOw0KCQkqYnVmZmVyID0gKnA7DQoJ
CSpwID0gZGlnOw0KCX0NCg0KCXJldHVybiBkaWdpdHM7DQp9DQoNCmludCB1NjR0b2Ffcih1NjQg
aW4sIGNoYXIgKmJ1ZmZlcikNCnsNCglyZXR1cm4gX3U2NHRvYV9iYXNlKGluLCBidWZmZXIsIDEw
LCBfVTY0VE9BX1JFQ0lQKDEwKSk7DQp9DQoNCk5vdCBoYXJkIHRvIGRvIHdpdGhvdXQgYW55IGRp
dmlkZXMgYXQgYWxsLg0KDQoJRGF2aWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
