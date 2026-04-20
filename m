Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF0yMGVm5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:46:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 536B34320D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:46:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68C283F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:46:12 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id A85053F7D9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2026 09:29:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20251104.gappssmtp.com header.s=20251104 header.b=YKGu8lYy;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.44) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-488ad135063so22010775e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2026 02:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1776677362; x=1777282162; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IEZHN3EejXoq9qbRm7mjl8x1VVtWAaecGDOSe23Ifhk=;
        b=YKGu8lYySHeg8r0PZ8psmp7K6cRKfhtBGejyge2o0IxYJQ88EUSRqfbOP1yBMZkt4I
         F8QbvWeiapX1cBX+xCkzYgpoE+y0WL55kcVb+xY3GWt7YGV4SeVUXcRX8UILqY0XBtQ4
         nqOeStm8m2/wiAZ1bAapOuiPJ0ObnNBE8ct7GjUYcHTMk59j/9TvzmEHYYytmi2/r+9k
         Ys0d8I9M+PpzkNdCK0Z9FJVpdJ08QsBeLv2rbsCWAWVo3+KsPlzcUCTDHTnnZ+H6lIYZ
         u1nzco1CMN5KrNB9fzHrjDstWCqHdvdhrpSLy9kpWl7w2Z6MMkn4/OjSB/IXbIcm4MjK
         UisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776677362; x=1777282162;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IEZHN3EejXoq9qbRm7mjl8x1VVtWAaecGDOSe23Ifhk=;
        b=S9R2N9Jg+i3IlTbEXwptnM0CeZ03FdqDqZw2LaLAN9EXO52rbADLb4Tx/oggSbNa2O
         ASgOorabqDEr8Zkj5QwwNNXjmSvxSefojHtyHZ5/QxAnXkVlJpZJqbvVz08Q5R7E2ov2
         Y5qo+4LEV7BtZRmN9p9fDhe5xzknXueuYd5mTr7nCraU+TnUhmgG7M4NF+44FmQyvAt+
         EB9Gbpd+2Td8Ff0X9Me6pxcstF3jWbxH3mmg3rr+B5nRYqZR3uty6Pw5ncfWUd7RhT9g
         mUGtybR42UTNyK/a0/nJOF+gQopJdJppNACmQBRqVDi0Wf+umybVTNtnJ+xxSq6OiBBL
         pRnA==
X-Forwarded-Encrypted: i=1; AFNElJ89m97Y8y6Eh65B1FsQKUvAB3mIqds1wFg3dhpe33ZkS3YHPaXQ1+yF+lGjhpyug4hD4bjY9oGzGnhPw7N7@lists.linaro.org
X-Gm-Message-State: AOJu0YyDi/4dYl5EIlIhPJDKd0ubzLO5vQYSmYghF2QDYrk3D/ErgJE7
	piyhcmiA7BKnN93xtqNB2amS1GWCPtxR9qA7V1vhv+n5vxOKpfPi6MiR92mIG8YZGHA=
X-Gm-Gg: AeBDievykBOq7jRkNPFCo2WH+DoxUYPLUkdfVbIltlAPjDEV7JwLYwGgV6ufci9NHA0
	hbS+hpB1p5CubngN9CZ/yruoDufAOtUSCY7Uaw07XWogbNqm0zJ/7hMi82oWvzXFaInhygpsGXb
	FxPSmez1Nh60TkRgmWdRHYaXewbcado/efCK9g/IgHRvSBFMEhXUyFl9U122abMXY2zTovLlbwm
	smJzpJymWr8cDSVkiS6BJ/JJCHR5mGvfbh0HsxhBsetDXTEdl2QBYCxzYqfNrC8NVQkdtj1Ttk5
	ivKahSpDhdP23NUhYyn4sLZwzE8oxhKEAGgrXntZisB9gXHk2U4kjf6CKqwiOf3NgsE0q+1EEYe
	ks0uwQsFCoL6X+Hl8xsc5GZxZ7hattt1UY6VQpZwqUJfrQ3d0aceoygaFnm/YE6BZ+67kN2ypSt
	72p8xbA9IA0S0Pwibf3GPsztPhSl/7QPfiDrBnpdG4Isrhyw==
X-Received: by 2002:a05:600c:a102:b0:488:ba19:da25 with SMTP id 5b1f17b1804b1-488fb759f0fmr143513465e9.12.1776677361344;
        Mon, 20 Apr 2026 02:29:21 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fb75af76sm85639205e9.13.2026.04.20.02.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 02:29:20 -0700 (PDT)
Date: Mon, 20 Apr 2026 11:29:17 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq5atst6ywbl.fsf@kernel.org>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S3BLCA7M6RRYO6D72C5PQTL24DR7EW3F
X-Message-ID-Hash: S3BLCA7M6RRYO6D72C5PQTL24DR7EW3F
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:44:56 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S3BLCA7M6RRYO6D72C5PQTL24DR7EW3F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	R_DKIM_REJECT(1.00)[resnulli-us.20251104.gappssmtp.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.865];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[resnulli-us.20251104.gappssmtp.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,resnulli.us:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 536B34320D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TW9uLCBBcHIgMjAsIDIwMjYgYXQgMDg6MzQ6MDZBTSArMDIwMCwgYW5lZXNoLmt1bWFyQGtlcm5l
bC5vcmcgd3JvdGU6DQo+SmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4gd3JpdGVzOg0KPg0K
Pj4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KPj4NCj4+IEN1cnJlbnQgQ0Mg
ZGVzaWducyBkb24ndCBwbGFjZSBhIHZJT01NVSBpbiBmcm9udCBvZiB1bnRydXN0ZWQgZGV2aWNl
cy4NCj4+IEluc3RlYWQsIHRoZSBETUEgQVBJIGZvcmNlcyBhbGwgdW50cnVzdGVkIGRldmljZSBE
TUEgdGhyb3VnaCBzd2lvdGxiDQo+PiBib3VuY2UgYnVmZmVycyAoaXNfc3dpb3RsYl9mb3JjZV9i
b3VuY2UoKSkgd2hpY2ggY29waWVzIGRhdGEgaW50bw0KPj4gc2hhcmVkIG1lbW9yeSBvbiBiZWhh
bGYgb2YgdGhlIGRldmljZS4NCj4+DQo+PiBXaGVuIGEgY2FsbGVyIGhhcyBhbHJlYWR5IGFycmFu
Z2VkIGZvciB0aGUgbWVtb3J5IHRvIGJlIHNoYXJlZA0KPj4gdmlhIHNldF9tZW1vcnlfZGVjcnlw
dGVkKCksIHRoZSBETUEgQVBJIG5lZWRzIHRvIGtub3cgc28gaXQgY2FuIG1hcA0KPj4gZGlyZWN0
bHkgdXNpbmcgdGhlIHVuZW5jcnlwdGVkIHBoeXNpY2FsIGFkZHJlc3MgcmF0aGVyIHRoYW4gYm91
bmNlDQo+PiBidWZmZXJpbmcuIEZvbGxvd2luZyB0aGUgcGF0dGVybiBvZiBETUFfQVRUUl9NTUlP
LCBhZGQNCj4+IERNQV9BVFRSX0NDX1NIQVJFRCBmb3IgdGhpcyBwdXJwb3NlLiBMaWtlIHRoZSBN
TUlPIGNhc2UsIG9ubHkgdGhlDQo+PiBjYWxsZXIga25vd3Mgd2hhdCBraW5kIG9mIG1lbW9yeSBp
dCBoYXMgYW5kIG11c3QgaW5mb3JtIHRoZSBETUEgQVBJDQo+PiBmb3IgaXQgdG8gd29yayBjb3Jy
ZWN0bHkuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29t
Pg0KPj4gLS0tDQo+PiB2NC0+djU6DQo+PiAtIHJlYmFzZWQgb24gdG9wIG9kIGRtYS1tYXBwaW5n
LWZvci1uZXh0DQo+PiAtIHMvZGVjcnlwdGVkL3NoYXJlZC8NCj4+IHYzLT52NDoNCj4+IC0gYWRk
ZWQgc29tZSBzYW5pdHkgY2hlY2tzIHRvIGRtYV9tYXBfcGh5cyBhbmQgZG1hX3VubWFwX3BoeXMN
Cj4+IC0gZW5oYW5jZWQgZG9jdW1lbnRhdGlvbiBvZiBETUFfQVRUUl9DQ19ERUNSWVBURUQgYXR0
cg0KPj4gdjEtPnYyOg0KPj4gLSByZWJhc2VkIG9uIHRvcCBvZiByZWNlbnQgZG1hLW1hcHBpbmct
Zml4ZXMNCj4+IC0tLQ0KPj4gIGluY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaCB8IDEwICsrKysr
KysrKysNCj4+ICBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWEuaCAgfCAgMyArKy0NCj4+ICBrZXJu
ZWwvZG1hL2RpcmVjdC5oICAgICAgICAgfCAxNCArKysrKysrKysrKy0tLQ0KPj4gIGtlcm5lbC9k
bWEvbWFwcGluZy5jICAgICAgICB8IDEzICsrKysrKysrKysrLS0NCj4+ICA0IGZpbGVzIGNoYW5n
ZWQsIDM0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaCBiL2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcu
aA0KPj4gaW5kZXggNjc3YzUxYWI3NTEwLi5kYjhhYjI0YTU0ZjQgMTAwNjQ0DQo+PiAtLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmgNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLW1h
cHBpbmcuaA0KPj4gQEAgLTkyLDYgKzkyLDE2IEBADQo+PiAgICogZmx1c2hpbmcuDQo+PiAgICov
DQo+PiAgI2RlZmluZSBETUFfQVRUUl9SRVFVSVJFX0NPSEVSRU5UCSgxVUwgPDwgMTIpDQo+PiAr
LyoNCj4+ICsgKiBETUFfQVRUUl9DQ19TSEFSRUQ6IEluZGljYXRlcyB0aGUgRE1BIG1hcHBpbmcg
aXMgc2hhcmVkIChkZWNyeXB0ZWQpIGZvcg0KPj4gKyAqIGNvbmZpZGVudGlhbCBjb21wdXRpbmcg
Z3Vlc3RzLiBGb3Igbm9ybWFsIHN5c3RlbSBtZW1vcnkgdGhlIGNhbGxlciBtdXN0IGhhdmUNCj4+
ICsgKiBjYWxsZWQgc2V0X21lbW9yeV9kZWNyeXB0ZWQoKSwgYW5kIHBncHJvdF9kZWNyeXB0ZWQg
bXVzdCBiZSB1c2VkIHdoZW4NCj4+ICsgKiBjcmVhdGluZyBDUFUgUFRFcyBmb3IgdGhlIG1hcHBp
bmcuIFRoZSBzYW1lIHNoYXJlZCBzZW1hbnRpYyBtYXkgYmUgcGFzc2VkDQo+PiArICogdG8gdGhl
IHZJT01NVSB3aGVuIGl0IHNldHMgdXAgdGhlIElPUFRFLiBGb3IgTU1JTyB1c2UgdG9nZXRoZXIg
d2l0aA0KPj4gKyAqIERNQV9BVFRSX01NSU8gdG8gaW5kaWNhdGUgc2hhcmVkIE1NSU8uIFVubGVz
cyBETUFfQVRUUl9NTUlPIGlzIHByb3ZpZGVkDQo+PiArICogYSBzdHJ1Y3QgcGFnZSBpcyByZXF1
aXJlZC4NCj4+ICsgKi8NCj4+ICsjZGVmaW5lIERNQV9BVFRSX0NDX1NIQVJFRAkoMVVMIDw8IDEz
KQ0KPj4gIA0KPj4gIC8qDQo+PiAgICogQSBkbWFfYWRkcl90IGNhbiBob2xkIGFueSB2YWxpZCBE
TUEgb3IgYnVzIGFkZHJlc3MgZm9yIHRoZSBwbGF0Zm9ybS4gIEl0IGNhbg0KPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYS5oIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1h
LmgNCj4+IGluZGV4IDYzNTk3YjAwNDQyNC4uMzFjOWRkZjcyYzlkIDEwMDY0NA0KPj4gLS0tIGEv
aW5jbHVkZS90cmFjZS9ldmVudHMvZG1hLmgNCj4+ICsrKyBiL2luY2x1ZGUvdHJhY2UvZXZlbnRz
L2RtYS5oDQo+PiBAQCAtMzQsNyArMzQsOCBAQCBUUkFDRV9ERUZJTkVfRU5VTShETUFfTk9ORSk7
DQo+PiAgCQl7IERNQV9BVFRSX1BSSVZJTEVHRUQsICJQUklWSUxFR0VEIiB9LCBcDQo+PiAgCQl7
IERNQV9BVFRSX01NSU8sICJNTUlPIiB9LCBcDQo+PiAgCQl7IERNQV9BVFRSX0RFQlVHR0lOR19J
R05PUkVfQ0FDSEVMSU5FUywgIkNBQ0hFTElORVNfT1ZFUkxBUCIgfSwgXA0KPj4gLQkJeyBETUFf
QVRUUl9SRVFVSVJFX0NPSEVSRU5ULCAiUkVRVUlSRV9DT0hFUkVOVCIgfSkNCj4+ICsJCXsgRE1B
X0FUVFJfUkVRVUlSRV9DT0hFUkVOVCwgIlJFUVVJUkVfQ09IRVJFTlQiIH0sIFwNCj4+ICsJCXsg
RE1BX0FUVFJfQ0NfU0hBUkVELCAiQ0NfU0hBUkVEIiB9KQ0KPj4gIA0KPj4gIERFQ0xBUkVfRVZF
TlRfQ0xBU1MoZG1hX21hcCwNCj4+ICAJVFBfUFJPVE8oc3RydWN0IGRldmljZSAqZGV2LCBwaHlz
X2FkZHJfdCBwaHlzX2FkZHIsIGRtYV9hZGRyX3QgZG1hX2FkZHIsDQo+PiBkaWZmIC0tZ2l0IGEv
a2VybmVsL2RtYS9kaXJlY3QuaCBiL2tlcm5lbC9kbWEvZGlyZWN0LmgNCj4+IGluZGV4IGI4NmZm
NjU0OTZmYy4uNzE0MGMyMDhjMTIzIDEwMDY0NA0KPj4gLS0tIGEva2VybmVsL2RtYS9kaXJlY3Qu
aA0KPj4gKysrIGIva2VybmVsL2RtYS9kaXJlY3QuaA0KPj4gQEAgLTg5LDE2ICs4OSwyNCBAQCBz
dGF0aWMgaW5saW5lIGRtYV9hZGRyX3QgZG1hX2RpcmVjdF9tYXBfcGh5cyhzdHJ1Y3QgZGV2aWNl
ICpkZXYsDQo+PiAgCWRtYV9hZGRyX3QgZG1hX2FkZHI7DQo+PiAgDQo+PiAgCWlmIChpc19zd2lv
dGxiX2ZvcmNlX2JvdW5jZShkZXYpKSB7DQo+PiAtCQlpZiAoYXR0cnMgJiAoRE1BX0FUVFJfTU1J
TyB8IERNQV9BVFRSX1JFUVVJUkVfQ09IRVJFTlQpKQ0KPj4gLQkJCXJldHVybiBETUFfTUFQUElO
R19FUlJPUjsNCj4+ICsJCWlmICghKGF0dHJzICYgRE1BX0FUVFJfQ0NfU0hBUkVEKSkgew0KPj4g
KwkJCWlmIChhdHRycyAmIChETUFfQVRUUl9NTUlPIHwgRE1BX0FUVFJfUkVRVUlSRV9DT0hFUkVO
VCkpDQo+PiArCQkJCXJldHVybiBETUFfTUFQUElOR19FUlJPUjsNCj4+ICANCj4+IC0JCXJldHVy
biBzd2lvdGxiX21hcChkZXYsIHBoeXMsIHNpemUsIGRpciwgYXR0cnMpOw0KPj4gKwkJCXJldHVy
biBzd2lvdGxiX21hcChkZXYsIHBoeXMsIHNpemUsIGRpciwgYXR0cnMpOw0KPj4gKwkJfQ0KPj4g
Kwl9IGVsc2UgaWYgKGF0dHJzICYgRE1BX0FUVFJfQ0NfU0hBUkVEKSB7DQo+PiArCQlyZXR1cm4g
RE1BX01BUFBJTkdfRVJST1I7DQo+PiAgCX0NCj4+DQo+DQo+V2hhdCBpcyB0aGlzIGNoZWNrIGZv
cj8gSWYgd2UgYXJlIHJlcXVlc3RpbmcgYSBETUEgbWFwcGluZyB3aXRoDQo+RE1BX0FUVFJfQ0Nf
U0hBUkVELCBzaG91bGRu4oCZdCBpdCBiZSBhbGxvd2VkPyBJZiBub3QsIGhvdyB3b3VsZCB3ZSBy
ZWFjaA0KDQpUaGlzIGlzIGRlZmVuc2l2ZS4gT25seSBhbGxvd3MgdG8gbWFwIHdpdGggRE1BX0FU
VFJfQ0NfU0hBUkVEIHNldCB0bw0KZGV2IGRldiB0aGF0IGRvZXMgbm90IHN1cHBvcnQgQ0MgbmF0
aXZlbHkuIFRoaXMgY2FuIGJlIG9mIGNvdXJzZSBsaWZ0ZWQsDQppZiB5b3UgaGF2ZSBhIGNhc2Uu
DQoNCg0KPnRoZSBjb25kaXRpb25hbCBiZWxvdyB3aGVyZSB3ZSBjb252ZXJ0IHRoZSBwaHlzaWNh
bCBhZGRyZXNzIHRvIGEgRE1BDQo+YWRkcmVzcyB1c2luZyBwaHlzX3RvX2RtYV91bmVuY3J5cHRl
ZCgpPy4gQWxzbywgaG93IGlzIHRoaXMgc3VwcG9zZWQgdG8NCj5pbnRlcmFjdCB3aXRoIGlzX3N3
aW90bGJfZm9yY2VfYm91bmNlKCk/4oCdDQoNCllvdSByZWFjaCB0aGVyZSB3aGVuIGlzX3N3aW90
bGJfZm9yY2VfYm91bmNlKGRldikgaXMgdHJ1ZSBhbmQNCkRNQV9BVFRSX0NDX1NIQVJFRCBpcyBz
ZXQuIFdoYXQgYW0gSSBtaXNzaW5nPw0KDQoNCg0KPg0KPj4gIA0KPj4gIAlpZiAoYXR0cnMgJiBE
TUFfQVRUUl9NTUlPKSB7DQo+PiAgCQlkbWFfYWRkciA9IHBoeXM7DQo+PiAgCQlpZiAodW5saWtl
bHkoIWRtYV9jYXBhYmxlKGRldiwgZG1hX2FkZHIsIHNpemUsIGZhbHNlKSkpDQo+PiAgCQkJZ290
byBlcnJfb3ZlcmZsb3c7DQo+PiArCX0gZWxzZSBpZiAoYXR0cnMgJiBETUFfQVRUUl9DQ19TSEFS
RUQpIHsNCj4+ICsJCWRtYV9hZGRyID0gcGh5c190b19kbWFfdW5lbmNyeXB0ZWQoZGV2LCBwaHlz
KTsNCj4+ICsJCWlmICh1bmxpa2VseSghZG1hX2NhcGFibGUoZGV2LCBkbWFfYWRkciwgc2l6ZSwg
ZmFsc2UpKSkNCj4+ICsJCQlnb3RvIGVycl9vdmVyZmxvdzsNCj4+ICAJfSBlbHNlIHsNCj4+ICAJ
CWRtYV9hZGRyID0gcGh5c190b19kbWEoZGV2LCBwaHlzKTsNCj4+ICAJCWlmICh1bmxpa2VseSgh
ZG1hX2NhcGFibGUoZGV2LCBkbWFfYWRkciwgc2l6ZSwgdHJ1ZSkpIHx8DQo+DQo+LWFuZWVzaA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
