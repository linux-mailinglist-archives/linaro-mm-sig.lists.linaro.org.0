Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB1E79AA0B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 18:12:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2D6C3E917
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:12:25 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by lists.linaro.org (Postfix) with ESMTPS id 270E43E917
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 16:12:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=sPpge+Lh;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.42) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-64a70194fbeso30830736d6.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 09:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1694448739; x=1695053539; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2Fm3Bafxaxq7OSAQ9sLz+uyVn20YSYfcySqL/LZ4QTY=;
        b=sPpge+LhrG2IVyfw0PuS5hS5WOt/yz2eUw7Pc75TcQZe9X1nUoKHGi4kDrbqhqGZlo
         wQoke0aEe5efpThS6x82CeS3I7laqkohJ177jHG2/qBbMZ2l6Jrtez0z+oxKqMOHS6kr
         kZSjV/y2q+NMCppQeUeOeJUPH9sH6T2SPlWhkRWuZ8LdvkKydaMmxpxzpi1N4LDIiy8D
         GpIyoG+rsLjjeOE+Af9h85tGGN5P0t6b4zL7LciaudEJ4CDHcOLlGPcUqxfi/KXk+4pl
         fbm8CRgwfzdePw5uI6WYZcBqVBZo15dAuKZ9RpH13JH78gi54Cxb1VjS/wDIAzoDwCTx
         JKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694448739; x=1695053539;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Fm3Bafxaxq7OSAQ9sLz+uyVn20YSYfcySqL/LZ4QTY=;
        b=Rp8Ge9UaY0RmgshEdeRJ1SAboVCsgpd6SxQ5uzScBZeSkUD8q2p0wNpytJhtN67o/u
         Oq4v1id1FjJWBRm7oDY8H7qvvcX/47AxVwYr0vRUU6EFN4YGO10AvlK9WMSyrBBOpVlo
         ej0uF6UQg5xvFjKghtiffawiZt08Rwml4DlGmZG7fSCY1sj2NBAaIgZNpSiF2Ctkz027
         3+fJHhvnFyTowjAgAhGiF/yMhxQl9m6lTYJlybzrLqvVn0Pbwh9UFwVucXJSHYHEZUvC
         B4vw5/Yd3NtdnRe+9N7ME/fA+mzLFO9gtkpwX+X4e5IpkKHRXrMa3klxSrlBojfEPW5w
         Ey7w==
X-Gm-Message-State: AOJu0YxzG6c2VsMTia/8VRH/x0XTbP/5VQft+cMzch4SzWmyDBKjf0fe
	+ffQLwLWR+qGTmGW6RR+FB5MSA==
X-Google-Smtp-Source: AGHT+IHfJzEj3YN+IDLa6c5OoOh5gMCnU53CNkVDYUfVOD27Y4SNqPHEBMqIhlGup6+WHXcBbS4pwQ==
X-Received: by 2002:a05:6214:12da:b0:64f:43b9:fe4c with SMTP id s26-20020a05621412da00b0064f43b9fe4cmr10140146qvv.47.1694448738736;
        Mon, 11 Sep 2023 09:12:18 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:bae9::7a9])
        by smtp.gmail.com with ESMTPSA id e12-20020a0ce3cc000000b0063d30c10f1esm3038666qvl.70.2023.09.11.09.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 09:12:18 -0700 (PDT)
Message-ID: <827b859e3ff8176ef0b18c29bc17481b4105e368.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit
 Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias
 Brugger <matthias.bgg@gmail.com>
Date: Mon, 11 Sep 2023 12:12:17 -0400
In-Reply-To: <20230911023038.30649-4-yong.wu@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-4-yong.wu@mediatek.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 270E43E917
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.42:from];
	TAGGED_RCPT(0.00)[dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,ndufresne-ca.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HQ4FBN3BLVTEKQSJDXLNASLE2ADTSCNA
X-Message-ID-Hash: HQ4FBN3BLVTEKQSJDXLNASLE2ADTSCNA
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HQ4FBN3BLVTEKQSJDXLNASLE2ADTSCNA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkxlIGx1bmRpIDExIHNlcHRlbWJyZSAyMDIzIMOgIDEwOjMwICswODAwLCBZb25nIFd1
IGEgw6ljcml0wqA6DQo+IEZyb206IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQo+
IA0KPiBUaGlzIGFsbG93cyBkcml2ZXJzIHdobyBkb24ndCB3YW50IHRvIGNyZWF0ZSB0aGVpciBv
d24NCj4gRE1BLUJVRiBleHBvcnRlciB0byBiZSBhYmxlIHRvIGFsbG9jYXRlIERNQS1CVUZzIGRp
cmVjdGx5DQo+IGZyb20gZXhpc3RpbmcgRE1BLUJVRiBIZWFwcy4NCj4gDQo+IFRoZXJlIGlzIHNv
bWUgY29uY2VybiB0aGF0IHRoZSBwcmVtaXNlIG9mIERNQS1CVUYgaGVhcHMgaXMNCj4gdGhhdCB1
c2VybGFuZCBrbm93cyBiZXR0ZXIgYWJvdXQgd2hhdCB0eXBlIG9mIGhlYXAgbWVtb3J5DQo+IGlz
IG5lZWRlZCBmb3IgYSBwaXBlbGluZSwgc28gaXQgd291bGQgbGlrZWx5IGJlIGJlc3QgZm9yDQo+
IGRyaXZlcnMgdG8gaW1wb3J0IGFuZCBmaWxsIERNQS1CVUZzIGFsbG9jYXRlZCBieSB1c2VybGFu
ZA0KPiBpbnN0ZWFkIG9mIGFsbG9jYXRpbmcgb25lIHRoZW1zZWx2ZXMsIGJ1dCB0aGlzIGlzIHN0
aWxsDQo+IHVwIGZvciBkZWJhdGUuDQoNCg0KV291bGQgYmUgbmljZSBmb3IgdGhlIHJldmlld2Vy
cyB0byBwcm92aWRlIHRoZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdXNlciBvZg0KdGhpcyBuZXcg
aW4ta2VybmVsIEFQSS4gSSBub3RpY2VkIGl0IGJlY2F1c2UgSSB3YXMgQ0NlZCwgYnV0IHN0cmFu
Z2VseSBpdCBkaWRuJ3QNCm1ha2UgaXQgdG8gdGhlIG1haWxpbmcgbGlzdCB5ZXQgYW5kIGl0cyBu
b3QgY2xlYXIgaW4gdGhlIGNvdmVyIHdoYXQgdGhpcyBpcyB1c2VkDQp3aXRoLiANCg0KSSBjYW4g
ZXhwbGFpbiBpbiBteSB3b3JkcyB0aG91Z2gsIG15IHJlYWQgaXMgdGhhdCB0aGlzIGlzIHVzZWQg
dG8gYWxsb2NhdGUgYm90aA0KdXNlciB2aXNpYmxlIGFuZCBkcml2ZXIgaW50ZXJuYWwgbWVtb3J5
IHNlZ21lbnRzIGluIE1USyBWQ09ERUMgZHJpdmVyLg0KDQpJJ20gc29tZXdoYXQgY29uY2VybmVk
IHRoYXQgRE1BQnVmIG9iamVjdHMgYXJlIHVzZWQgdG8gYWJzdHJhY3Qgc2VjdXJlIG1lbW9yeQ0K
YWxsb2NhdGlvbiBmcm9tIHRlZS4gRm9yIGZyYW1lYnVmZmVycyB0aGF0IGFyZSBnb2luZyB0byBi
ZSBleHBvcnRlZCBhbmQgc2hhcmVkDQppdHMgcHJvYmFibHkgZmFpciB1c2UsIGJ1dCBpdCBzZWVt
cyB0aGF0IGludGVybmFsIHNoYXJlZCBtZW1vcnkgYW5kIGNvZGVjDQpzcGVjaWZpYyByZWZlcmVu
Y2UgYnVmZmVycyBhbHNvIGVuZHVwIHdpdGggYSBkbWFidWYgZmQgKG9mdGVuIGNhbGxlZCBhIHNl
Y3VyZSBmZA0KaW4gdGhlIHY0bDIgcGF0Y2hzZXQpIGZvciBkYXRhIHRoYXQgaXMgbm90IGJlaW5n
IHNoYXJlZCwgYW5kIHJlcXVpcmVzIGEgMToxDQptYXBwaW5nIHRvIGEgdGVlIGhhbmRsZSBhbnl3
YXkuIElzIHRoYXQgdGhlIGRlc2lnbiB3ZSdkIGxpa2UgdG8gZm9sbG93ID8gQ2FuJ3QNCndlIGRp
cmVjdGx5IGFsbG9jYXRlIGZyb20gdGhlIHRlZSwgYWRkaW5nIG5lZWRlZCBoZWxwZXIgdG8gbWFr
ZSB0aGlzIGFzIHNpbXBsZQ0KYXMgYWxsb2NhdGluZyBmcm9tIGEgSEVBUCA/DQoNCk5pY29sYXMN
Cg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+IFtZb25nOiBG
aXggdGhlIGNoZWNrcGF0Y2ggYWxpZ25tZW50IHdhcm5pbmddDQo+IC0tLQ0KPiAgZHJpdmVycy9k
bWEtYnVmL2RtYS1oZWFwLmMgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLQ0KPiAgaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oICAgfCAyNSArKysrKysrKysrKysrKysr
DQo+ICAyIGZpbGVzIGNoYW5nZWQsIDY5IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1oZWFwLmMNCj4gaW5kZXggZGNjMGUzOGM2MWZhLi45MDhiYjMwZGM4NjQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+IEBAIC01MywxMiArNTMsMTUgQEAgc3RhdGljIGRldl90IGRt
YV9oZWFwX2RldnQ7DQo+ICBzdGF0aWMgc3RydWN0IGNsYXNzICpkbWFfaGVhcF9jbGFzczsNCj4g
IHN0YXRpYyBERUZJTkVfWEFSUkFZX0FMTE9DKGRtYV9oZWFwX21pbm9ycyk7DQo+ICANCj4gLXN0
YXRpYyBpbnQgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwgc2l6
ZV90IGxlbiwNCj4gLQkJCQkgdW5zaWduZWQgaW50IGZkX2ZsYWdzLA0KPiAtCQkJCSB1bnNpZ25l
ZCBpbnQgaGVhcF9mbGFncykNCj4gK3N0cnVjdCBkbWFfYnVmICpkbWFfaGVhcF9idWZmZXJfYWxs
b2Moc3RydWN0IGRtYV9oZWFwICpoZWFwLCBzaXplX3QgbGVuLA0KPiArCQkJCSAgICAgIHVuc2ln
bmVkIGludCBmZF9mbGFncywNCj4gKwkJCQkgICAgICB1bnNpZ25lZCBpbnQgaGVhcF9mbGFncykN
Cj4gIHsNCj4gLQlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPiAtCWludCBmZDsNCj4gKwlpZiAo
ZmRfZmxhZ3MgJiB+RE1BX0hFQVBfVkFMSURfRkRfRkxBR1MpDQo+ICsJCXJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOw0KPiArDQo+ICsJaWYgKGhlYXBfZmxhZ3MgJiB+RE1BX0hFQVBfVkFMSURfSEVB
UF9GTEFHUykNCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ICANCj4gIAkvKg0KPiAg
CSAqIEFsbG9jYXRpb25zIGZyb20gYWxsIGhlYXBzIGhhdmUgdG8gYmVnaW4NCj4gQEAgLTY2LDkg
KzY5LDIwIEBAIHN0YXRpYyBpbnQgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFfaGVh
cCAqaGVhcCwgc2l6ZV90IGxlbiwNCj4gIAkgKi8NCj4gIAlsZW4gPSBQQUdFX0FMSUdOKGxlbik7
DQo+ICAJaWYgKCFsZW4pDQo+IC0JCXJldHVybiAtRUlOVkFMOw0KPiArCQlyZXR1cm4gRVJSX1BU
UigtRUlOVkFMKTsNCj4gIA0KPiAtCWRtYWJ1ZiA9IGhlYXAtPm9wcy0+YWxsb2NhdGUoaGVhcCwg
bGVuLCBmZF9mbGFncywgaGVhcF9mbGFncyk7DQo+ICsJcmV0dXJuIGhlYXAtPm9wcy0+YWxsb2Nh
dGUoaGVhcCwgbGVuLCBmZF9mbGFncywgaGVhcF9mbGFncyk7DQo+ICt9DQo+ICtFWFBPUlRfU1lN
Qk9MX0dQTChkbWFfaGVhcF9idWZmZXJfYWxsb2MpOw0KPiArDQo+ICtzdGF0aWMgaW50IGRtYV9o
ZWFwX2J1ZmZlcmZkX2FsbG9jKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwgc2l6ZV90IGxlbiwNCj4g
KwkJCQkgICB1bnNpZ25lZCBpbnQgZmRfZmxhZ3MsDQo+ICsJCQkJICAgdW5zaWduZWQgaW50IGhl
YXBfZmxhZ3MpDQo+ICt7DQo+ICsJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gKwlpbnQgZmQ7
DQo+ICsNCj4gKwlkbWFidWYgPSBkbWFfaGVhcF9idWZmZXJfYWxsb2MoaGVhcCwgbGVuLCBmZF9m
bGFncywgaGVhcF9mbGFncyk7DQo+ICAJaWYgKElTX0VSUihkbWFidWYpKQ0KPiAgCQlyZXR1cm4g
UFRSX0VSUihkbWFidWYpOw0KPiAgDQo+IEBAIC0xMDYsMTUgKzEyMCw5IEBAIHN0YXRpYyBsb25n
IGRtYV9oZWFwX2lvY3RsX2FsbG9jYXRlKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpkYXRhKQ0K
PiAgCWlmIChoZWFwX2FsbG9jYXRpb24tPmZkKQ0KPiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gIA0K
PiAtCWlmIChoZWFwX2FsbG9jYXRpb24tPmZkX2ZsYWdzICYgfkRNQV9IRUFQX1ZBTElEX0ZEX0ZM
QUdTKQ0KPiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4gLQ0KPiAtCWlmIChoZWFwX2FsbG9jYXRpb24t
PmhlYXBfZmxhZ3MgJiB+RE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUykNCj4gLQkJcmV0dXJuIC1F
SU5WQUw7DQo+IC0NCj4gLQlmZCA9IGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhoZWFwLCBoZWFwX2Fs
bG9jYXRpb24tPmxlbiwNCj4gLQkJCQkgICBoZWFwX2FsbG9jYXRpb24tPmZkX2ZsYWdzLA0KPiAt
CQkJCSAgIGhlYXBfYWxsb2NhdGlvbi0+aGVhcF9mbGFncyk7DQo+ICsJZmQgPSBkbWFfaGVhcF9i
dWZmZXJmZF9hbGxvYyhoZWFwLCBoZWFwX2FsbG9jYXRpb24tPmxlbiwNCj4gKwkJCQkgICAgIGhl
YXBfYWxsb2NhdGlvbi0+ZmRfZmxhZ3MsDQo+ICsJCQkJICAgICBoZWFwX2FsbG9jYXRpb24tPmhl
YXBfZmxhZ3MpOw0KPiAgCWlmIChmZCA8IDApDQo+ICAJCXJldHVybiBmZDsNCj4gIA0KPiBAQCAt
MjA1LDYgKzIxMyw3IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFf
aGVhcCAqaGVhcCkNCj4gIHsNCj4gIAlyZXR1cm4gaGVhcC0+bmFtZTsNCj4gIH0NCj4gK0VYUE9S
VF9TWU1CT0xfR1BMKGRtYV9oZWFwX2dldF9uYW1lKTsNCj4gIA0KPiAgc3RydWN0IGRtYV9oZWFw
ICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5m
bykNCj4gIHsNCj4gQEAgLTI5MCw2ICsyOTksMjQgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVh
cF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gIAlr
ZnJlZShoZWFwKTsNCj4gIAlyZXR1cm4gZXJyX3JldDsNCj4gIH0NCj4gK0VYUE9SVF9TWU1CT0xf
R1BMKGRtYV9oZWFwX2FkZCk7DQo+ICsNCj4gK3N0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfZmlu
ZChjb25zdCBjaGFyICpuYW1lKQ0KPiArew0KPiArCXN0cnVjdCBkbWFfaGVhcCAqaDsNCj4gKw0K
PiArCW11dGV4X2xvY2soJmhlYXBfbGlzdF9sb2NrKTsNCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
KGgsICZoZWFwX2xpc3QsIGxpc3QpIHsNCj4gKwkJaWYgKCFzdHJjbXAoaC0+bmFtZSwgbmFtZSkp
IHsNCj4gKwkJCWtyZWZfZ2V0KCZoLT5yZWZjb3VudCk7DQo+ICsJCQltdXRleF91bmxvY2soJmhl
YXBfbGlzdF9sb2NrKTsNCj4gKwkJCXJldHVybiBoOw0KPiArCQl9DQo+ICsJfQ0KPiArCW11dGV4
X3VubG9jaygmaGVhcF9saXN0X2xvY2spOw0KPiArCXJldHVybiBOVUxMOw0KPiArfQ0KPiArRVhQ
T1JUX1NZTUJPTF9HUEwoZG1hX2hlYXBfZmluZCk7DQo+ICANCj4gIHN0YXRpYyB2b2lkIGRtYV9o
ZWFwX3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJlZikNCj4gIHsNCj4gQEAgLTMxNSw2ICszNDIsNyBA
QCB2b2lkIGRtYV9oZWFwX3B1dChzdHJ1Y3QgZG1hX2hlYXAgKmgpDQo+ICAJa3JlZl9wdXQoJmgt
PnJlZmNvdW50LCBkbWFfaGVhcF9yZWxlYXNlKTsNCj4gIAltdXRleF91bmxvY2soJmhlYXBfbGlz
dF9sb2NrKTsNCj4gIH0NCj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9oZWFwX3B1dCk7DQo+ICAN
Cj4gIHN0YXRpYyBjaGFyICpkbWFfaGVhcF9kZXZub2RlKGNvbnN0IHN0cnVjdCBkZXZpY2UgKmRl
diwgdW1vZGVfdCAqbW9kZSkNCj4gIHsNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1h
LWhlYXAuaCBiL2luY2x1ZGUvbGludXgvZG1hLWhlYXAuaA0KPiBpbmRleCBmM2M2Nzg4OTJjNWMu
LjU5ZTcwZjZjN2E2MCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQo+
ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWhlYXAuaA0KPiBAQCAtNjQsMTAgKzY0LDM1IEBAIGNv
bnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCk7DQo+ICAg
Ki8NCj4gIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVh
cF9leHBvcnRfaW5mbyAqZXhwX2luZm8pOw0KPiAgDQo+ICsvKioNCj4gKyAqIGRtYV9oZWFwX2Zp
bmQgLSBnZXQgdGhlIGhlYXAgcmVnaXN0ZXJlZCB3aXRoIHRoZSBzcGVjaWZpZWQgbmFtZQ0KPiAr
ICogQG5hbWU6IE5hbWUgb2YgdGhlIERNQS1IZWFwIHRvIGZpbmQNCj4gKyAqDQo+ICsgKiBSZXR1
cm5zOg0KPiArICogVGhlIERNQS1IZWFwIHdpdGggdGhlIHByb3ZpZGVkIG5hbWUuDQo+ICsgKg0K
PiArICogTk9URTogRE1BLUhlYXBzIHJldHVybmVkIGZyb20gdGhpcyBmdW5jdGlvbiBNVVNUIGJl
IHJlbGVhc2VkIHVzaW5nDQo+ICsgKiBkbWFfaGVhcF9wdXQoKSB3aGVuIHRoZSB1c2VyIGlzIGRv
bmUgdG8gZW5hYmxlIHRoZSBoZWFwIHRvIGJlIHVubG9hZGVkLg0KPiArICovDQo+ICtzdHJ1Y3Qg
ZG1hX2hlYXAgKmRtYV9oZWFwX2ZpbmQoY29uc3QgY2hhciAqbmFtZSk7DQo+ICsNCj4gIC8qKg0K
PiAgICogZG1hX2hlYXBfcHV0IC0gZHJvcHMgYSByZWZlcmVuY2UgdG8gYSBkbWFidWYgaGVhcCwg
cG90ZW50aWFsbHkgZnJlZWluZyBpdA0KPiAgICogQGhlYXA6IHRoZSBoZWFwIHdob3NlIHJlZmVy
ZW5jZSBjb3VudCB0byBkZWNyZW1lbnQNCj4gICAqLw0KPiAgdm9pZCBkbWFfaGVhcF9wdXQoc3Ry
dWN0IGRtYV9oZWFwICpoZWFwKTsNCj4gIA0KPiArLyoqDQo+ICsgKiBkbWFfaGVhcF9idWZmZXJf
YWxsb2MgLSBBbGxvY2F0ZSBkbWEtYnVmIGZyb20gYSBkbWFfaGVhcA0KPiArICogQGhlYXA6CURN
QS1IZWFwIHRvIGFsbG9jYXRlIGZyb20NCj4gKyAqIEBsZW46CXNpemUgdG8gYWxsb2NhdGUgaW4g
Ynl0ZXMNCj4gKyAqIEBmZF9mbGFnczoJZmxhZ3MgdG8gc2V0IG9uIHJldHVybmVkIGRtYS1idWYg
ZmQNCj4gKyAqIEBoZWFwX2ZsYWdzOiBmbGFncyB0byBwYXNzIHRvIHRoZSBkbWEgaGVhcA0KPiAr
ICoNCj4gKyAqIFRoaXMgaXMgZm9yIGludGVybmFsIGRtYS1idWYgYWxsb2NhdGlvbnMgb25seS4g
RnJlZSByZXR1cm5lZCBidWZmZXJzIHdpdGggZG1hX2J1Zl9wdXQoKS4NCj4gKyAqLw0KPiArc3Ry
dWN0IGRtYV9idWYgKmRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAs
IHNpemVfdCBsZW4sDQo+ICsJCQkJICAgICAgdW5zaWduZWQgaW50IGZkX2ZsYWdzLA0KPiArCQkJ
CSAgICAgIHVuc2lnbmVkIGludCBoZWFwX2ZsYWdzKTsNCj4gKw0KPiAgI2VuZGlmIC8qIF9ETUFf
SEVBUFNfSCAqLw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
