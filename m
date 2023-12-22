Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E96C681C701
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Dec 2023 09:58:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04F4841227
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Dec 2023 08:58:52 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 4706340D1E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Dec 2023 08:58:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=eYDLyghx;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40d4103aed7so14079865e9.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Dec 2023 00:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703235509; x=1703840309; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cI35bX0Nhe6pNuZytaRMQzlreBpUdOzZVZdkSiKR318=;
        b=eYDLyghx1YYZgBYe3uEqoUecUh2+x7OCrFsxXTf51F4n5LLDRJyHnNqu12lEkIzWtC
         co4EBYBWveT6SN7wo0g9hU5naumpfMK2uEH9AMATdUim0KKUK7qIye2bDtdloeZnbTXY
         49gww/lGtcmGHidPpOhY9xK0l0IGhnFfrk1wS7DKBDppQ5Uizzi1WsMXz/6FbVKn3xp3
         /eFQcjegH6upqsBE4AHyDS9vRHZR+uUboeYzMCmHObMNqWjNsHZgRla++YQulQ/0p1Ls
         f/FjmVZ9VVmZxABE7ZTHSm8DqQOBWnynYMM8PbKLgllzeeCgBoTL5B+3+e7WSIT0hpO1
         v4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703235509; x=1703840309;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cI35bX0Nhe6pNuZytaRMQzlreBpUdOzZVZdkSiKR318=;
        b=oJ82rkaCHVP6aiSrsxE///EaZ5C979CT4Xz5vMmUSxIDdTCB+HtGn//S8tgz9oG3rJ
         X5TCCu7jbKf22rx4TDd0mFhce6iEbJPYP7zfyQtqjCYx9TgLYoxQS0vrC9e3wMmTOeSh
         OZlZGK2kNvWG+3m2eLi6yMhVrfK0A9ASTlqGjv/duAYvh6qN3QS3JP37pnkgM7Ex6ucu
         FsSrbyQMOdZdQwPNeX4pcf8uVxRoqANh/CsRfELCVwdd9/AflMm3tlHSZw/EpZq0E67a
         YC3rtz6QJXCEcGVu+pH646dVztuolWR45L4uPRgD11RaMiqmmWgqcMVGlrXHky64PzKn
         Dsnw==
X-Gm-Message-State: AOJu0YwgdiyExLcQF/TtkMcMaASIRGt5ykQ+qhoEOnPKAt7l9mSUZTEn
	tUX51HnNqIRXMOU9mbWiuXg=
X-Google-Smtp-Source: AGHT+IHxUXolvNOrzYP2sehmaGu4dpOV/paRm80lFYTwBFEv14pGkL6zMlGQe6zd/u5nBBYzi0u5pA==
X-Received: by 2002:a05:600c:3d0f:b0:40d:43cf:275d with SMTP id bh15-20020a05600c3d0f00b0040d43cf275dmr535638wmb.95.1703235508788;
        Fri, 22 Dec 2023 00:58:28 -0800 (PST)
Received: from ?IPv6:2001:818:ea8e:7f00:5877:261e:1d6d:8696? ([2001:818:ea8e:7f00:5877:261e:1d6d:8696])
        by smtp.gmail.com with ESMTPSA id h7-20020a05600c350700b0040d2e37c06dsm6120316wmq.20.2023.12.22.00.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 00:58:28 -0800 (PST)
Message-ID: <277071605eb355912972a30b07ecead7d70efe25.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron <jic23@kernel.org>
Date: Fri, 22 Dec 2023 09:58:29 +0100
In-Reply-To: <2da3fb55384a222868f90562be9e1e2ca55ec1c3.camel@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	 <20231219175009.65482-8-paul@crapouillou.net>
	 <20231221161258.056f5ce4@jic23-huawei>
	 <2da3fb55384a222868f90562be9e1e2ca55ec1c3.camel@crapouillou.net>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4706340D1E
X-Spamd-Bar: --------
Message-ID-Hash: KU3LVRO3MRKSK6Y25XVQLFHDASC4V2MK
X-Message-ID-Hash: KU3LVRO3MRKSK6Y25XVQLFHDASC4V2MK
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 7/8] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KU3LVRO3MRKSK6Y25XVQLFHDASC4V2MK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDIzLTEyLTIxIGF0IDE4OjMwICswMTAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0K
PiBIaSBKb25hdGhhbiwNCj4gDQo+IExlIGpldWRpIDIxIGTDqWNlbWJyZSAyMDIzIMOgIDE2OjEy
ICswMDAwLCBKb25hdGhhbiBDYW1lcm9uIGEgw6ljcml0wqA6DQo+ID4gT24gVHVlLCAxOSBEZWMg
MjAyMyAxODo1MDowOCArMDEwMA0KPiA+IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3Uu
bmV0PiB3cm90ZToNCj4gPiANCj4gPiA+IFVzZSB0aGUgZnVuY3Rpb25zIHByb3ZpZGVkIGJ5IHRo
ZSBidWZmZXItZG1hIGNvcmUgdG8gaW1wbGVtZW50IHRoZQ0KPiA+ID4gRE1BQlVGIHVzZXJzcGFj
ZSBBUEkgaW4gdGhlIGJ1ZmZlci1kbWFlbmdpbmUgSUlPIGJ1ZmZlcg0KPiA+ID4gaW1wbGVtZW50
YXRpb24uDQo+ID4gPiANCj4gPiA+IFNpbmNlIHdlIHdhbnQgdG8gYmUgYWJsZSB0byB0cmFuc2Zl
ciBhbiBhcmJpdHJhcnkgbnVtYmVyIG9mIGJ5dGVzDQo+ID4gPiBhbmQNCj4gPiA+IG5vdCBuZWNl
c2FyaWx5IHRoZSBmdWxsIERNQUJVRiwgdGhlIGFzc29jaWF0ZWQgc2NhdHRlcmxpc3QgaXMNCj4g
PiA+IGNvbnZlcnRlZA0KPiA+ID4gdG8gYW4gYXJyYXkgb2YgRE1BIGFkZHJlc3NlcyArIGxlbmd0
aHMsIHdoaWNoIGlzIHRoZW4gcGFzc2VkIHRvDQo+ID4gPiBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9k
bWFfYXJyYXkoKS4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8
cGF1bEBjcmFwb3VpbGxvdS5uZXQ+DQo+ID4gT25lIHF1ZXN0aW9uIGlubGluZS4gT3RoZXJ3aXNl
IGxvb2tzIGZpbmUgdG8gbWUuDQo+ID4gDQo+ID4gSg0KPiA+ID4gDQo+ID4gPiAtLS0NCj4gPiA+
IHYzOiBVc2UgdGhlIG5ldyBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9kbWFfYXJyYXkoKSwgYW5kIGFk
YXB0IHRoZQ0KPiA+ID4gY29kZSB0bw0KPiA+ID4gwqDCoMKgIHdvcmsgd2l0aCB0aGUgbmV3IGZ1
bmN0aW9ucyBpbnRyb2R1Y2VkIGluIGluZHVzdHJpYWxpby1idWZmZXItDQo+ID4gPiBkbWEuYy4N
Cj4gPiA+IA0KPiA+ID4gdjU6IC0gVXNlIHRoZSBuZXcgZG1hZW5naW5lX3ByZXBfc2xhdmVfZG1h
X3ZlYygpLg0KPiA+ID4gwqDCoMKgIC0gUmVzdHJpY3QgdG8gaW5wdXQgYnVmZmVycywgc2luY2Ug
b3V0cHV0IGJ1ZmZlcnMgYXJlIG5vdCB5ZXQNCj4gPiA+IMKgwqDCoMKgwqAgc3VwcG9ydGVkIGJ5
IElJTyBidWZmZXJzLg0KPiA+ID4gLS0tDQo+ID4gPiDCoC4uLi9idWZmZXIvaW5kdXN0cmlhbGlv
LWJ1ZmZlci1kbWFlbmdpbmUuY8KgwqDCoCB8IDUyDQo+ID4gPiArKysrKysrKysrKysrKysrLS0t
DQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYnVmZmVyL2luZHVzdHJp
YWxpby1idWZmZXItZG1hZW5naW5lLmMNCj4gPiA+IGIvZHJpdmVycy9paW8vYnVmZmVyL2luZHVz
dHJpYWxpby1idWZmZXItZG1hZW5naW5lLmMNCj4gPiA+IGluZGV4IDVmODViYTM4ZTZmNi4uODI1
ZDc2YTI0YTY3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9paW8vYnVmZmVyL2luZHVzdHJp
YWxpby1idWZmZXItZG1hZW5naW5lLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvaWlvL2J1ZmZlci9p
bmR1c3RyaWFsaW8tYnVmZmVyLWRtYWVuZ2luZS5jDQo+ID4gPiBAQCAtNjQsMTUgKzY0LDUxIEBA
IHN0YXRpYyBpbnQNCj4gPiA+IGlpb19kbWFlbmdpbmVfYnVmZmVyX3N1Ym1pdF9ibG9jayhzdHJ1
Y3QgaWlvX2RtYV9idWZmZXJfcXVldWUNCj4gPiA+ICpxdWV1ZSwNCj4gPiA+IMKgwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgZG1hZW5naW5lX2J1ZmZlciAqZG1hZW5naW5lX2J1ZmZlciA9DQo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlpb19idWZmZXJfdG9fZG1hZW5naW5lX2J1
ZmZlcigmcXVldWUtPmJ1ZmZlcik7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9h
c3luY190eF9kZXNjcmlwdG9yICpkZXNjOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgdW5zaWduZWQg
aW50IGksIG5lbnRzOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IHNjYXR0ZXJsaXN0ICpz
Z2w7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZG1hX3ZlYyAqdmVjczsNCj4gPiA+ICvC
oMKgwqDCoMKgwqDCoHNpemVfdCBtYXhfc2l6ZTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBkbWFf
Y29va2llX3QgY29va2llOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgc2l6ZV90IGxlbl90b3RhbDsN
Cj4gPiA+IMKgDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBibG9jay0+Ynl0ZXNfdXNlZCA9IG1pbihi
bG9jay0+c2l6ZSwgZG1hZW5naW5lX2J1ZmZlci0NCj4gPiA+ID4gbWF4X3NpemUpOw0KPiA+ID4g
LcKgwqDCoMKgwqDCoMKgYmxvY2stPmJ5dGVzX3VzZWQgPSByb3VuZF9kb3duKGJsb2NrLT5ieXRl
c191c2VkLA0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkbWFlbmdpbmVfYnVmZmVyLT5hbGlnbik7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAo
cXVldWUtPmJ1ZmZlci5kaXJlY3Rpb24gIT0gSUlPX0JVRkZFUl9ESVJFQ1RJT05fSU4pIHsNCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBXZSBkbyBub3QgeWV0IHN1cHBv
cnQgb3V0cHV0IGJ1ZmZlcnMuICovDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIC1FSU5WQUw7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqB9DQo+ID4gPiDCoA0KPiA+
ID4gLcKgwqDCoMKgwqDCoMKgZGVzYyA9IGRtYWVuZ2luZV9wcmVwX3NsYXZlX3NpbmdsZShkbWFl
bmdpbmVfYnVmZmVyLT5jaGFuLA0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGJsb2NrLT5waHlzX2FkZHIsIGJsb2NrLT5ieXRlc191c2VkLA0KPiA+ID4gRE1BX0RFVl9UT19N
RU0sDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRE1BX1BSRVBfSU5URVJS
VVBUKTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChibG9jay0+c2dfdGFibGUpIHsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZ2wgPSBibG9jay0+c2dfdGFibGUtPnNn
bDsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBuZW50cyA9IHNnX25lbnRz
X2Zvcl9sZW4oc2dsLCBibG9jay0+Ynl0ZXNfdXNlZCk7DQo+ID4gDQo+ID4gQXJlIHdlIGd1YXJh
bnRlZWQgdGhlIGxlbmd0aCBpbiB0aGUgc2dsaXN0IGlzIGVub3VnaD/CoCBJZiBub3QgdGhpcw0K
PiA+IGNhbiByZXR1cm4gYW4gZXJyb3IgY29kZS4NCj4gDQo+IFRoZSBsZW5ndGggb2YgdGhlIHNn
bGlzdCB3aWxsIGFsd2F5cyBiZSBlbm91Z2gsIHRoZQ0KPiBpaW9fYnVmZmVyX2VucXVldWVfZG1h
YnVmKCkgZnVuY3Rpb24gYWxyZWFkeSBjaGVja3MgdGhhdCBibG9jay0NCj4gPiBieXRlc191c2Vk
IGlzIGVxdWFsIG9yIHNtYWxsZXIgdGhhbiB0aGUgc2l6ZSBvZiB0aGUgRE1BQlVGLg0KPiANCj4g
SXQgaXMgcXVpdGUgYSBmZXcgZnVuY3Rpb25zIGFib3ZlIGluIHRoZSBjYWxsIHN0YWNrIHRob3Vn
aCwgc28gSSBjYW4NCj4gaGFuZGxlIHRoZSBlcnJvcnMgb2Ygc2dfbmVudHNfZm9yX2xlbigpIGhl
cmUgaWYgeW91IHRoaW5rIG1ha2VzIHNlbnNlLg0KDQpNYXliZSBwdXR0aW5nIHNvbWV0aGluZyBs
aWtlIHRoZSBhYm92ZSBpbiBhIGNvbW1lbnQ/DQoNCi0gTnVubyBTw6ENCg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
