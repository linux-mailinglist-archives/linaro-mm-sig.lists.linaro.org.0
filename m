Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C216644AFC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 19:17:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5930F3F19F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 18:17:30 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 859F23E894
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Dec 2022 18:17:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=JOt5sl3N;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id d14so16526147edj.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Dec 2022 10:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7vtB1k1E12/Qe5MgbChmK5o0Viuvz+G0q4nlKw8ldAc=;
        b=JOt5sl3NlVw3zEko+QR9FYDFsdGhhR1+AZLE+M13jISuMq9oNkTnkFgXbzOhovPuJK
         JB2JL0L4OMhuLiEgHNnBHjBzy7vQO3Ba4/P7VqZAH1fD5srTl0ou+CbeAr8atTfEC9+Q
         h/Lv//kEh3iC7qmqQ3sEVqDApiBCh/pwWW3MsYeXMbnVYtz4qeXJR5mO+3znLhN7OWqN
         BJd3Al3jRq9kgvoFSZU0gDMZBvqAWOn8+ZeUx1xL4CJC4muM/yBjruLF5t7If7d4VraT
         hpeJtdxkdjdJLxvLaHPWTSoCRYbI5J0KIWW6AS8iRtTa0tMB3CmsqFmT+XKCWR02kTtd
         7UXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7vtB1k1E12/Qe5MgbChmK5o0Viuvz+G0q4nlKw8ldAc=;
        b=TxUDMDV6B+K2ayrQR5OJAX6WrlDe5o3oI33lBTeWLvV6Hjz8V2nifH1o9dkFeUGO9P
         SM2W1NKKYOD8FWTfLbvHbYoYrGiwKAqGLJ+eYep6Bx9vSmPWodHa3kENv70IKQxkyORa
         07VtKNxSP72VOiMCLEzdeCUDPVoPwo3Rm/ko5H3XzuMvMzF9TjiViPBPSzlxlnGBgoHY
         m2tHk8RBW8nG/z5i1ChEOH0RaxR377Ziajfl1IrWutIsIoghCzPCR6mBYHx9U9RV/que
         xTNZb6gWde6pPO4JIVtlbKoe9t94Iomgs31sG77YV4K1IvuwTo6Y5tLzw3MstDHXfy8S
         tblw==
X-Gm-Message-State: ANoB5pncWhI40d02MQVRY9RHiCl/U9wIUvEUpghBd1evdU2c1K3eM0mG
	S2N74BpTlzR56z1eqJhvx5Q=
X-Google-Smtp-Source: AA0mqf6RdIuR2ZSd6whmHf4DjhAn+d+r9tStiV/oTM2gTheg5zX+OFsnkNnLTSKy3DC6aQW+P01BuQ==
X-Received: by 2002:a05:6402:5299:b0:461:7291:79c1 with SMTP id en25-20020a056402529900b00461729179c1mr70361891edb.68.1670350640573;
        Tue, 06 Dec 2022 10:17:20 -0800 (PST)
Received: from ?IPV6:2a02:908:1256:79a0:f31f:ea10:880e:c031? ([2a02:908:1256:79a0:f31f:ea10:880e:c031])
        by smtp.gmail.com with ESMTPSA id cn14-20020a0564020cae00b00458b41d9460sm1238631edb.92.2022.12.06.10.17.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Dec 2022 10:17:20 -0800 (PST)
Message-ID: <8c3960e5-ef35-1029-1b37-1029d2b71cc3@gmail.com>
Date: Tue, 6 Dec 2022 19:17:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "quic_charante@quicinc.com" <quic_charante@quicinc.com>,
 "cuigaosheng1@huawei.com" <cuigaosheng1@huawei.com>,
 "tjmercier@google.com" <tjmercier@google.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <20221206151207.8801-1-christian.koenig@amd.com>
 <DM5PR11MB1324F5F49A28EFDA67B1C258C11B9@DM5PR11MB1324.namprd11.prod.outlook.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <DM5PR11MB1324F5F49A28EFDA67B1C258C11B9@DM5PR11MB1324.namprd11.prod.outlook.com>
X-Rspamd-Queue-Id: 859F23E894
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[2a02:908:1256:79a0:f31f:ea10:880e:c031:received];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linaro.org:email,huawei.com:email];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.134];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.43:from];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.208.43:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QXLJH6EXRA5GZ6ACKGSBOSHRZ6UU4EYV
X-Message-ID-Hash: QXLJH6EXRA5GZ6ACKGSBOSHRZ6UU4EYV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix dma_buf_export init order
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QXLJH6EXRA5GZ6ACKGSBOSHRZ6UU4EYV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDYuMTIuMjIgdW0gMTc6MjAgc2NocmllYiBSdWhsLCBNaWNoYWVsIEo6DQo+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4gRnJvbTogZHJpLWRldmVsIDxkcmktZGV2ZWwtYm91bmNl
c0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPj4gQ2hyaXN0aWFuIEvDtm5p
Zw0KPj4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgNiwgMjAyMiAxMDoxMiBBTQ0KPj4gVG86IHF1
aWNfY2hhcmFudGVAcXVpY2luYy5jb207IGN1aWdhb3NoZW5nMUBodWF3ZWkuY29tOw0KPj4gdGpt
ZXJjaWVyQGdvb2dsZS5jb207IHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnDQo+PiBDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
OyBsaW51eC0NCj4+IG1lZGlhQHZnZXIua2VybmVsLm9yZw0KPj4gU3ViamVjdDogW1BBVENIXSBk
bWEtYnVmOiBmaXggZG1hX2J1Zl9leHBvcnQgaW5pdCBvcmRlcg0KPj4NCj4+IFRoZSBpbml0IG9y
ZGVyIGFuZCByZXN1bHRpbmcgZXJyb3IgaGFuZGxpbmcgaW4gZG1hX2J1Zl9leHBvcnQNCj4+IHdh
cyBwcmV0dHkgbWVzc3kuDQo+Pg0KPj4gU3Vib3JkaW5hdGUgb2JqZWN0cyBsaWtlIHRoZSBmaWxl
IGFuZCB0aGUgc3lzZnMga2VybmVsIG9iamVjdHMNCj4+IHdlcmUgaW5pdGlhbGl6aW5nIGFuZCB3
aXJpbmcgaXRzZWxmIHVwIHdpdGggdGhlIG9iamVjdCBpbiB0aGUNCj4+IHdyb25nIG9yZGVyIHJl
c3VsdGluZyBub3Qgb25seSBpbiBjb21wbGljYXRpbmcgYW5kIHBhcnRpYWxseQ0KPj4gaW5jb3Jy
ZWN0IGVycm9yIGhhbmRsaW5nLCBidXQgYWxzbyBpbiBwdWJsaXNoaW5nIG9ubHkgaGFsdmUNCj4+
IGluaXRpYWxpemVkIERNQS1idWYgb2JqZWN0cy4NCj4+DQo+PiBDbGVhbiB0aGlzIHVwIHRob3Vn
aHRmdWxseSBieSBhbGxvY2F0aW5nIHRoZSBmaWxlIGluZGVwZW5kZW50DQo+PiBvZiB0aGUgRE1B
LWJ1ZiBvYmplY3QuIFRoZW4gYWxsb2NhdGUgYW5kIGluaXRpYWxpemUgdGhlIERNQS1idWYNCj4+
IG9iamVjdCBpdHNlbGYsIGJlZm9yZSBwdWJsaXNoaW5nIGl0IHRocm91Z2ggc3lzZnMuIElmIGV2
ZXJ5dGhpbmcNCj4+IHdvcmtzIGFzIGV4cGVjdGVkIHRoZSBmaWxlIGlzIHRoZW4gY29ubmVjdGVk
IHdpdGggdGhlIERNQS1idWYNCj4+IG9iamVjdCBhbmQgcHVibGlzaCBpdCB0aHJvdWdoIGRlYnVn
ZnMuDQo+Pg0KPj4gQWxzbyBhZGRzIHRoZSBtaXNzaW5nIGRtYV9yZXN2X2ZpbmkoKSBpbnRvIHRo
ZSBlcnJvciBoYW5kbGluZy4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiAtLS0NCj4+IGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLXN5c2ZzLXN0YXRzLmMgfCAgNyArLS0NCj4+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LXN5c2ZzLXN0YXRzLmggfCAgNCArLQ0KPj4gZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAgICAg
ICAgICAgICB8IDY1ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQ0KPj4gMyBmaWxlcyBjaGFu
Z2VkLCAzNCBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtDQo+PiBidWYtc3lzZnMtc3RhdHMuYw0KPj4gaW5kZXggMmJiYTBiYWJjYjYyLi40YjY4
MGUxMGMxNWEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1z
dGF0cy5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQo+
PiBAQCAtMTY4LDE0ICsxNjgsMTEgQEAgdm9pZCBkbWFfYnVmX3VuaW5pdF9zeXNmc19zdGF0aXN0
aWNzKHZvaWQpDQo+PiAJa3NldF91bnJlZ2lzdGVyKGRtYV9idWZfc3RhdHNfa3NldCk7DQo+PiB9
DQo+Pg0KPj4gLWludCBkbWFfYnVmX3N0YXRzX3NldHVwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYp
DQo+PiAraW50IGRtYV9idWZfc3RhdHNfc2V0dXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3Ry
dWN0IGZpbGUgKmZpbGUpDQo+PiB7DQo+PiAJc3RydWN0IGRtYV9idWZfc3lzZnNfZW50cnkgKnN5
c2ZzX2VudHJ5Ow0KPj4gCWludCByZXQ7DQo+Pg0KPj4gLQlpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVm
LT5maWxlKQ0KPj4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+PiAtDQo+PiAJaWYgKCFkbWFidWYtPmV4
cF9uYW1lKSB7DQo+PiAJCXByX2VycigiZXhwb3J0ZXIgbmFtZSBtdXN0IG5vdCBiZSBlbXB0eSBp
ZiBzdGF0cw0KPj4gbmVlZGVkXG4iKTsNCj4+IAkJcmV0dXJuIC1FSU5WQUw7DQo+PiBAQCAtMTky
LDcgKzE4OSw3IEBAIGludCBkbWFfYnVmX3N0YXRzX3NldHVwKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYpDQo+Pg0KPj4gCS8qIGNyZWF0ZSB0aGUgZGlyZWN0b3J5IGZvciBidWZmZXIgc3RhdHMgKi8N
Cj4+IAlyZXQgPSBrb2JqZWN0X2luaXRfYW5kX2FkZCgmc3lzZnNfZW50cnktPmtvYmosICZkbWFf
YnVmX2t0eXBlLA0KPj4gTlVMTCwNCj4+IC0JCQkJICAgIiVsdSIsIGZpbGVfaW5vZGUoZG1hYnVm
LT5maWxlKS0+aV9pbm8pOw0KPj4gKwkJCQkgICAiJWx1IiwgZmlsZV9pbm9kZShmaWxlKS0+aV9p
bm8pOw0KPj4gCWlmIChyZXQpDQo+PiAJCWdvdG8gZXJyX3N5c2ZzX2RtYWJ1ZjsNCj4+DQo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuaCBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtDQo+PiBidWYtc3lzZnMtc3RhdHMuaA0KPj4gaW5kZXggYTQ5YzZlMjY1
MGNjLi43YThhOTk1Yjc1YmEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi1zeXNmcy1zdGF0cy5oDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1z
dGF0cy5oDQo+PiBAQCAtMTMsNyArMTMsNyBAQA0KPj4gaW50IGRtYV9idWZfaW5pdF9zeXNmc19z
dGF0aXN0aWNzKHZvaWQpOw0KPj4gdm9pZCBkbWFfYnVmX3VuaW5pdF9zeXNmc19zdGF0aXN0aWNz
KHZvaWQpOw0KPj4NCj4+IC1pbnQgZG1hX2J1Zl9zdGF0c19zZXR1cChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmKTsNCj4+ICtpbnQgZG1hX2J1Zl9zdGF0c19zZXR1cChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLCBzdHJ1Y3QgZmlsZSAqZmlsZSk7DQo+Pg0KPj4gdm9pZCBkbWFfYnVmX3N0YXRzX3RlYXJk
b3duKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpOw0KPj4gI2Vsc2UNCj4+IEBAIC0yNSw3ICsyNSw3
IEBAIHN0YXRpYyBpbmxpbmUgaW50IGRtYV9idWZfaW5pdF9zeXNmc19zdGF0aXN0aWNzKHZvaWQp
DQo+Pg0KPj4gc3RhdGljIGlubGluZSB2b2lkIGRtYV9idWZfdW5pbml0X3N5c2ZzX3N0YXRpc3Rp
Y3Modm9pZCkge30NCj4+DQo+PiAtc3RhdGljIGlubGluZSBpbnQgZG1hX2J1Zl9zdGF0c19zZXR1
cChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPj4gK3N0YXRpYyBpbmxpbmUgaW50IGRtYV9idWZf
c3RhdHNfc2V0dXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGZpbGUNCj4+ICpmaWxl
KQ0KPj4gew0KPj4gCXJldHVybiAwOw0KPj4gfQ0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBpbmRleCBlNmYz
NmMwMTRjNGMuLmVhMDgwNDliNzBhZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+IEBAIC02MTQs
MTkgKzYxNCwxMSBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0
DQo+PiBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4+IAlzaXplX3QgYWxsb2Nfc2l6
ZSA9IHNpemVvZihzdHJ1Y3QgZG1hX2J1Zik7DQo+PiAJaW50IHJldDsNCj4+DQo+PiAtCWlmICgh
ZXhwX2luZm8tPnJlc3YpDQo+PiAtCQlhbGxvY19zaXplICs9IHNpemVvZihzdHJ1Y3QgZG1hX3Jl
c3YpOw0KPj4gLQllbHNlDQo+PiAtCQkvKiBwcmV2ZW50ICZkbWFfYnVmWzFdID09IGRtYV9idWYt
PnJlc3YgKi8NCj4+IC0JCWFsbG9jX3NpemUgKz0gMTsNCj4+IC0NCj4+IC0JaWYgKFdBUk5fT04o
IWV4cF9pbmZvLT5wcml2DQo+PiAtCQkJICB8fCAhZXhwX2luZm8tPm9wcw0KPj4gLQkJCSAgfHwg
IWV4cF9pbmZvLT5vcHMtPm1hcF9kbWFfYnVmDQo+PiAtCQkJICB8fCAhZXhwX2luZm8tPm9wcy0+
dW5tYXBfZG1hX2J1Zg0KPj4gLQkJCSAgfHwgIWV4cF9pbmZvLT5vcHMtPnJlbGVhc2UpKSB7DQo+
PiArCWlmIChXQVJOX09OKCFleHBfaW5mby0+cHJpdiB8fCAhZXhwX2luZm8tPm9wcw0KPj4gKwkJ
ICAgIHx8ICFleHBfaW5mby0+b3BzLT5tYXBfZG1hX2J1Zg0KPj4gKwkJICAgIHx8ICFleHBfaW5m
by0+b3BzLT51bm1hcF9kbWFfYnVmDQo+PiArCQkgICAgfHwgIWV4cF9pbmZvLT5vcHMtPnJlbGVh
c2UpKQ0KPj4gCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4+IC0JfQ0KPj4NCj4+IAlpZiAo
V0FSTl9PTihleHBfaW5mby0+b3BzLT5jYWNoZV9zZ3RfbWFwcGluZyAmJg0KPj4gCQkgICAgKGV4
cF9pbmZvLT5vcHMtPnBpbiB8fCBleHBfaW5mby0+b3BzLT51bnBpbikpKQ0KPj4gQEAgLTYzOCwx
MCArNjMwLDIxIEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QN
Cj4+IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPj4gCWlmICghdHJ5X21vZHVsZV9n
ZXQoZXhwX2luZm8tPm93bmVyKSkNCj4+IAkJcmV0dXJuIEVSUl9QVFIoLUVOT0VOVCk7DQo+Pg0K
Pj4gKwlmaWxlID0gZG1hX2J1Zl9nZXRmaWxlKGV4cF9pbmZvLT5zaXplLCBleHBfaW5mby0+Zmxh
Z3MpOw0KPiBIaSBDaHJpc3RpYW4sDQo+DQo+IGRtYV9idWZfZ2V0ZmlsZSB0YWtlcyBhIGRtYWJ1
ZiwgaGVyZSB5b3UgaGF2ZSBhIHNpemU/DQo+DQo+IERpZCB5b3UgY2hhbmdlIHRoaXMgZnVuY3Rp
b24gc29tZXdoZXJlPw0KDQpVcHMgZm9yZ290IHRvIGFkZCB0aGF0IGNoYW5nZSB0byB0aGUgcGF0
Y2guIEkgc2hvdWxkbid0IGNvZGUgd2hlbiBJJ20gaW4gDQphIGh1cnJ5Lg0KDQpBZGRyZXNzZWQg
dGhpcyBhbmQgQ2hhcmFucyBjb21tZW50IGluIHYyLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoN
Cj4NCj4gd2l0aCB0aGF0IGFkZHJlc3NlZC4uLi4NCj4NCj4gVGhpcyBjbGVhbnVwIG1ha2VzIHNl
bnNlIHRvIG1lLg0KPg0KPiBSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhsIDxtaWNoYWVsLmou
cnVobEBpbnRlbC5jb20+DQo+DQo+IE0NCj4NCj4+ICsJaWYgKElTX0VSUihmaWxlKSkgew0KPj4g
KwkJcmV0ID0gUFRSX0VSUihmaWxlKTsNCj4+ICsJCWdvdG8gZXJyX21vZHVsZTsNCj4+ICsJfQ0K
Pj4gKw0KPj4gKwlpZiAoIWV4cF9pbmZvLT5yZXN2KQ0KPj4gKwkJYWxsb2Nfc2l6ZSArPSBzaXpl
b2Yoc3RydWN0IGRtYV9yZXN2KTsNCj4+ICsJZWxzZQ0KPj4gKwkJLyogcHJldmVudCAmZG1hX2J1
ZlsxXSA9PSBkbWFfYnVmLT5yZXN2ICovDQo+PiArCQlhbGxvY19zaXplICs9IDE7DQo+PiAJZG1h
YnVmID0ga3phbGxvYyhhbGxvY19zaXplLCBHRlBfS0VSTkVMKTsNCj4+IAlpZiAoIWRtYWJ1Zikg
ew0KPj4gCQlyZXQgPSAtRU5PTUVNOw0KPj4gLQkJZ290byBlcnJfbW9kdWxlOw0KPj4gKwkJZ290
byBlcnJfZmlsZTsNCj4+IAl9DQo+Pg0KPj4gCWRtYWJ1Zi0+cHJpdiA9IGV4cF9pbmZvLT5wcml2
Ow0KPj4gQEAgLTY1Myw0NCArNjU2LDM2IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9y
dChjb25zdCBzdHJ1Y3QNCj4+IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPj4gCWlu
aXRfd2FpdHF1ZXVlX2hlYWQoJmRtYWJ1Zi0+cG9sbCk7DQo+PiAJZG1hYnVmLT5jYl9pbi5wb2xs
ID0gZG1hYnVmLT5jYl9vdXQucG9sbCA9ICZkbWFidWYtPnBvbGw7DQo+PiAJZG1hYnVmLT5jYl9p
bi5hY3RpdmUgPSBkbWFidWYtPmNiX291dC5hY3RpdmUgPSAwOw0KPj4gKwltdXRleF9pbml0KCZk
bWFidWYtPmxvY2spOw0KPj4gKwlJTklUX0xJU1RfSEVBRCgmZG1hYnVmLT5hdHRhY2htZW50cyk7
DQo+Pg0KPj4gCWlmICghcmVzdikgew0KPj4gLQkJcmVzdiA9IChzdHJ1Y3QgZG1hX3Jlc3YgKikm
ZG1hYnVmWzFdOw0KPj4gLQkJZG1hX3Jlc3ZfaW5pdChyZXN2KTsNCj4+ICsJCWRtYWJ1Zi0+cmVz
diA9IChzdHJ1Y3QgZG1hX3Jlc3YgKikmZG1hYnVmWzFdOw0KPj4gKwkJZG1hX3Jlc3ZfaW5pdChk
bWFidWYtPnJlc3YpOw0KPj4gKwl9IGVsc2Ugew0KPj4gKwkJZG1hYnVmLT5yZXN2ID0gcmVzdjsN
Cj4+IAl9DQo+PiAtCWRtYWJ1Zi0+cmVzdiA9IHJlc3Y7DQo+Pg0KPj4gLQlmaWxlID0gZG1hX2J1
Zl9nZXRmaWxlKGRtYWJ1ZiwgZXhwX2luZm8tPmZsYWdzKTsNCj4+IC0JaWYgKElTX0VSUihmaWxl
KSkgew0KPj4gLQkJcmV0ID0gUFRSX0VSUihmaWxlKTsNCj4+ICsJcmV0ID0gZG1hX2J1Zl9zdGF0
c19zZXR1cChkbWFidWYsIGZpbGUpOw0KPj4gKwlpZiAocmV0KQ0KPj4gCQlnb3RvIGVycl9kbWFi
dWY7DQo+PiAtCX0NCj4+DQo+PiArCWZpbGUtPnByaXZhdGVfZGF0YSA9IGRtYWJ1ZjsNCj4+ICsJ
ZmlsZS0+Zl9wYXRoLmRlbnRyeS0+ZF9mc2RhdGEgPSBkbWFidWY7DQo+PiAJZG1hYnVmLT5maWxl
ID0gZmlsZTsNCj4+DQo+PiAtCW11dGV4X2luaXQoJmRtYWJ1Zi0+bG9jayk7DQo+PiAtCUlOSVRf
TElTVF9IRUFEKCZkbWFidWYtPmF0dGFjaG1lbnRzKTsNCj4+IC0NCj4+IAltdXRleF9sb2NrKCZk
Yl9saXN0LmxvY2spOw0KPj4gCWxpc3RfYWRkKCZkbWFidWYtPmxpc3Rfbm9kZSwgJmRiX2xpc3Qu
aGVhZCk7DQo+PiAJbXV0ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spOw0KPj4NCj4+IC0JcmV0ID0g
ZG1hX2J1Zl9zdGF0c19zZXR1cChkbWFidWYpOw0KPj4gLQlpZiAocmV0KQ0KPj4gLQkJZ290byBl
cnJfc3lzZnM7DQo+PiAtDQo+PiAJcmV0dXJuIGRtYWJ1ZjsNCj4+DQo+PiAtZXJyX3N5c2ZzOg0K
Pj4gLQkvKg0KPj4gLQkgKiBTZXQgZmlsZS0+Zl9wYXRoLmRlbnRyeS0+ZF9mc2RhdGEgdG8gTlVM
TCBzbyB0aGF0IHdoZW4NCj4+IC0JICogZG1hX2J1Zl9yZWxlYXNlKCkgZ2V0cyBpbnZva2VkIGJ5
IGRlbnRyeV9vcHMsIGl0IGV4aXRzDQo+PiAtCSAqIGVhcmx5IGJlZm9yZSBjYWxsaW5nIHRoZSBy
ZWxlYXNlKCkgZG1hX2J1ZiBvcC4NCj4+IC0JICovDQo+PiAtCWZpbGUtPmZfcGF0aC5kZW50cnkt
PmRfZnNkYXRhID0gTlVMTDsNCj4+IC0JZnB1dChmaWxlKTsNCj4+IGVycl9kbWFidWY6DQo+PiAr
CWlmICghcmVzdikNCj4+ICsJCWRtYV9yZXN2X2ZpbmkoZG1hYnVmLT5yZXN2KTsNCj4+IAlrZnJl
ZShkbWFidWYpOw0KPj4gK2Vycl9maWxlOg0KPj4gKwlmcHV0KGZpbGUpOw0KPj4gZXJyX21vZHVs
ZToNCj4+IAltb2R1bGVfcHV0KGV4cF9pbmZvLT5vd25lcik7DQo+PiAJcmV0dXJuIEVSUl9QVFIo
cmV0KTsNCj4+IC0tDQo+PiAyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
