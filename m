Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A6479D44D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 17:05:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCCE23EF28
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 15:05:40 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by lists.linaro.org (Postfix) with ESMTPS id B8C463E925
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 15:05:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=cO1R7eng;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.178) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-76f18e09716so336732185a.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 08:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1694531136; x=1695135936; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vM3oyGRFxtHxm1neHgA67Osk9iJA5NE4DNejEYZfvZ8=;
        b=cO1R7engVME4nbJn5O138vAWrt1WitCbRWQ+8t8VwW1zXJPkb8T+unbqD3SAYU27nV
         0xpfbWja+/6FsUvZfq41tG6goBCnH9tDvrngZdVcBXKM98zcg2m9Lwv3OycNg263Be67
         DMad2Lc2uDBrEMb3pJjL1L33Lh2uixzRWu/eeWM2699h8BnDl3fp0pGW9atMVqGfZdlm
         Npa1dkZQUWFFwo5s/1rtSB1g+nqowJ73X2KaCYWWVjJzmDbNoRjYTrcf5RZlxMrieDnO
         F9nBulW0W2qy+8xGITb77VP05LurPXQA60Rc0/mwGXU5yG3MG6yLJq5SGlDOF8Yc3+ga
         QXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694531136; x=1695135936;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vM3oyGRFxtHxm1neHgA67Osk9iJA5NE4DNejEYZfvZ8=;
        b=vC6iGI9iHhWZNYI3xCByQP9JgucNu3ziDvC8WPb2M/CPxFCcJE6b3AD2IyK9yQJyTR
         XYsKkXK6vuwtYFZBzEByjBxqBZHTx7sLV/VgZPvRy5wT8CFoNbz/SMejpk2tEaShbe3+
         RHK1wXhpjxg6eOruxxEkXz7WLTZJVNCH7YYahRbTBxa6wZlRlaBuS1IbmXoFGJ2jlcBA
         ziTKlrPA4r94Hy40PSMOQAFos0/ep6EHQrKGEkNMmjarGtBJ/s1jxnffgxMJgUHxnNGf
         AJ3KljHjJAL2kRyVjwxZugWc727b3W9PM5JQlWTunq05azcSIK2/nEmW3A7q0krXFjpn
         kwVw==
X-Gm-Message-State: AOJu0YxclwBSD1hjqJYkruBcPShhFjV1wQZc1Sk12NOWPw7cyV+y1EWA
	Exp9moln2Tz559AendjDTJ20cxCED7NiR08Zzo92SA==
X-Google-Smtp-Source: AGHT+IETEyxKiwuQg/hyiHZWR8ejsoB5rvNcCqFck37LlPZlL1+L6Aam0BaJ+MZGh5Xo6lDDiukNdA==
X-Received: by 2002:a05:620a:454c:b0:76c:aff9:9f27 with SMTP id u12-20020a05620a454c00b0076caff99f27mr17152733qkp.59.1694531136409;
        Tue, 12 Sep 2023 08:05:36 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:bae9::7a9])
        by smtp.gmail.com with ESMTPSA id s41-20020a05622a1aa900b004053bcffe49sm3380085qtc.9.2023.09.12.08.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 08:05:36 -0700 (PDT)
Message-ID: <d15067b12571f8868925aace9dc84473cd74ec1f.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Yong Wu =?UTF-8?Q?=28=E5=90=B4=E5=8B=87=29?= <Yong.Wu@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org"
 <sumit.semwal@linaro.org>
Date: Tue, 12 Sep 2023 11:05:35 -0400
In-Reply-To: <8e795311ff93c7a336eb688818f055c5c569741e.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-4-yong.wu@mediatek.com>
	 <827b859e3ff8176ef0b18c29bc17481b4105e368.camel@ndufresne.ca>
	 <8e795311ff93c7a336eb688818f055c5c569741e.camel@mediatek.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: B8C463E925
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[mediatek.com,gmail.com,amd.com,kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.178:from];
	TAGGED_RCPT(0.00)[dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qk1-f178.google.com:helo,mail-qk1-f178.google.com:rdns,ndufresne-ca.20230601.gappssmtp.com:dkim,mediatek.com:email]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3URPXNOHLYB3OJY2CQXLFAH44SRB4Z4M
X-Message-ID-Hash: 3URPXNOHLYB3OJY2CQXLFAH44SRB4Z4M
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Jianjiao Zeng =?UTF-8?Q?=28=E6=9B=BE=E5=81=A5=E5=A7=A3=29?= <Jianjiao.Zeng@mediatek.com>, Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino
 .delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3URPXNOHLYB3OJY2CQXLFAH44SRB4Z4M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWFyZGkgMTIgc2VwdGVtYnJlIDIwMjMgw6AgMDg6NDcgKzAwMDAsIFlvbmcgV3UgKOWQtOWL
hykgYSDDqWNyaXTCoDoNCj4gT24gTW9uLCAyMDIzLTA5LTExIGF0IDEyOjEyIC0wNDAwLCBOaWNv
bGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+ICAJIA0KPiA+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNl
IGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsDQo+ID4geW91IGhh
dmUgdmVyaWZpZWQgdGhlIHNlbmRlciBvciB0aGUgY29udGVudC4NCj4gPiAgSGksDQo+ID4gDQo+
ID4gTGUgbHVuZGkgMTEgc2VwdGVtYnJlIDIwMjMgw6AgMTA6MzAgKzA4MDAsIFlvbmcgV3UgYSDD
qWNyaXQgOg0KPiA+ID4gRnJvbTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCj4g
PiA+IA0KPiA+ID4gVGhpcyBhbGxvd3MgZHJpdmVycyB3aG8gZG9uJ3Qgd2FudCB0byBjcmVhdGUg
dGhlaXIgb3duDQo+ID4gPiBETUEtQlVGIGV4cG9ydGVyIHRvIGJlIGFibGUgdG8gYWxsb2NhdGUg
RE1BLUJVRnMgZGlyZWN0bHkNCj4gPiA+IGZyb20gZXhpc3RpbmcgRE1BLUJVRiBIZWFwcy4NCj4g
PiA+IA0KPiA+ID4gVGhlcmUgaXMgc29tZSBjb25jZXJuIHRoYXQgdGhlIHByZW1pc2Ugb2YgRE1B
LUJVRiBoZWFwcyBpcw0KPiA+ID4gdGhhdCB1c2VybGFuZCBrbm93cyBiZXR0ZXIgYWJvdXQgd2hh
dCB0eXBlIG9mIGhlYXAgbWVtb3J5DQo+ID4gPiBpcyBuZWVkZWQgZm9yIGEgcGlwZWxpbmUsIHNv
IGl0IHdvdWxkIGxpa2VseSBiZSBiZXN0IGZvcg0KPiA+ID4gZHJpdmVycyB0byBpbXBvcnQgYW5k
IGZpbGwgRE1BLUJVRnMgYWxsb2NhdGVkIGJ5IHVzZXJsYW5kDQo+ID4gPiBpbnN0ZWFkIG9mIGFs
bG9jYXRpbmcgb25lIHRoZW1zZWx2ZXMsIGJ1dCB0aGlzIGlzIHN0aWxsDQo+ID4gPiB1cCBmb3Ig
ZGViYXRlLg0KPiA+IA0KPiA+IA0KPiA+IFdvdWxkIGJlIG5pY2UgZm9yIHRoZSByZXZpZXdlcnMg
dG8gcHJvdmlkZSB0aGUgaW5mb3JtYXRpb24gYWJvdXQgdGhlDQo+ID4gdXNlciBvZg0KPiA+IHRo
aXMgbmV3IGluLWtlcm5lbCBBUEkuIEkgbm90aWNlZCBpdCBiZWNhdXNlIEkgd2FzIENDZWQsIGJ1
dA0KPiA+IHN0cmFuZ2VseSBpdCBkaWRuJ3QNCj4gPiBtYWtlIGl0IHRvIHRoZSBtYWlsaW5nIGxp
c3QgeWV0IGFuZCBpdHMgbm90IGNsZWFyIGluIHRoZSBjb3ZlciB3aGF0DQo+ID4gdGhpcyBpcyB1
c2VkDQo+ID4gd2l0aC4gDQo+ID4gDQo+ID4gSSBjYW4gZXhwbGFpbiBpbiBteSB3b3JkcyB0aG91
Z2gsIG15IHJlYWQgaXMgdGhhdCB0aGlzIGlzIHVzZWQgdG8NCj4gPiBhbGxvY2F0ZSBib3RoDQo+
ID4gdXNlciB2aXNpYmxlIGFuZCBkcml2ZXIgaW50ZXJuYWwgbWVtb3J5IHNlZ21lbnRzIGluIE1U
SyBWQ09ERUMNCj4gPiBkcml2ZXIuDQo+ID4gDQo+ID4gSSdtIHNvbWV3aGF0IGNvbmNlcm5lZCB0
aGF0IERNQUJ1ZiBvYmplY3RzIGFyZSB1c2VkIHRvIGFic3RyYWN0DQo+ID4gc2VjdXJlIG1lbW9y
eQ0KPiA+IGFsbG9jYXRpb24gZnJvbSB0ZWUuIEZvciBmcmFtZWJ1ZmZlcnMgdGhhdCBhcmUgZ29p
bmcgdG8gYmUgZXhwb3J0ZWQNCj4gPiBhbmQgc2hhcmVkDQo+ID4gaXRzIHByb2JhYmx5IGZhaXIg
dXNlLCBidXQgaXQgc2VlbXMgdGhhdCBpbnRlcm5hbCBzaGFyZWQgbWVtb3J5IGFuZA0KPiA+IGNv
ZGVjDQo+ID4gc3BlY2lmaWMgcmVmZXJlbmNlIGJ1ZmZlcnMgYWxzbyBlbmR1cCB3aXRoIGEgZG1h
YnVmIGZkIChvZnRlbiBjYWxsZWQNCj4gPiBhIHNlY3VyZSBmZA0KPiA+IGluIHRoZSB2NGwyIHBh
dGNoc2V0KSBmb3IgZGF0YSB0aGF0IGlzIG5vdCBiZWluZyBzaGFyZWQsIGFuZCByZXF1aXJlcw0K
PiA+IGEgMToxDQo+ID4gbWFwcGluZyB0byBhIHRlZSBoYW5kbGUgYW55d2F5LiBJcyB0aGF0IHRo
ZSBkZXNpZ24gd2UnZCBsaWtlIHRvDQo+ID4gZm9sbG93ID8gDQo+IA0KPiBZZXMuIGJhc2ljYWxs
eSB0aGlzIGlzIHJpZ2h0Lg0KPiANCj4gPiBDYW4ndA0KPiA+IHdlIGRpcmVjdGx5IGFsbG9jYXRl
IGZyb20gdGhlIHRlZSwgYWRkaW5nIG5lZWRlZCBoZWxwZXIgdG8gbWFrZSB0aGlzDQo+ID4gYXMg
c2ltcGxlDQo+ID4gYXMgYWxsb2NhdGluZyBmcm9tIGEgSEVBUCA/DQo+IA0KPiBJZiB0aGlzIGhh
cHBlbnMsIHRoZSBtZW1vcnkgd2lsbCBhbHdheXMgYmUgaW5zaWRlIFRFRS4gSGVyZSB3ZSBjcmVh
dGUgYQ0KPiBuZXcgX0NNQSBoZWFwLCBpdCB3aWxsIGNtYV9hbGxvYy9mcmVlIGR5bmFtaWNhbGx5
LiBSZXNlcnZlIGl0IGJlZm9yZQ0KPiBTVlAgc3RhcnQsIGFuZCByZWxlYXNlIHRvIGtlcm5lbCBh
ZnRlciBTVlAgZG9uZS4NCg0KT2ssIEkgc2VlIHRoZSBiZW5lZml0IG9mIGhhdmluZyBhIGNvbW1v
biBkcml2ZXIgdGhlbi4gSXQgd291bGQgYWRkIHRvIHRoZQ0KY29tcGxleGl0eSwgYnV0IGhhdmlu
ZyBhIGRyaXZlciBmb3IgdGhlIHRlZSBhbGxvY2F0b3IgYW5kIHY0bDIvaGVhcHMgd291bGQgYmUN
CmFub3RoZXIgb3B0aW9uPw0KDQo+ICAgDQo+IFNlY29uZGx5LiB0aGUgdjRsMi9kcm0gaGFzIHRo
ZSBtYXR1cmUgZHJpdmVyIGNvbnRyb2wgZmxvdywgbGlrZQ0KPiBkcm1fZ2VtX3ByaW1lX2ltcG9y
dF9kZXYgdGhhdCBhbHdheXMgdXNlIGRtYV9idWYgb3BzLiBTbyB3ZSBjYW4gdXNlIHRoZQ0KPiBj
dXJyZW50IGZsb3cgYXMgbXVjaCBhcyBwb3NzaWJsZSB3aXRob3V0IGhhdmluZyB0byByZS1wbGFu
IGEgZmxvdyBpbg0KPiB0aGUgVEVFLg0KDQpGcm9tIHdoYXQgSSd2ZSByZWFkIGZyb20gWXVuZmVp
IHNlcmllcywgdGhpcyBpcyBvbmx5IHBhcnRpYWxseSB0cnVlIGZvciBWNEwyLg0KVGhlIHZiMiBx
dWV1ZSBNTUFQIGZlYXR1cmUgaGF2ZSBkbWFidWYgZXhwb3J0YXRpb24gYXMgb3B0aW9uYWwsIGJ1
dCBpdHMgbm90IGENCnByb2JsZW0gdG8gYWx3YXlzIGJhY2sgaXQgdXAgd2l0aCBhIGRtYWJ1ZiBv
YmplY3QuIEJ1dCBmb3IgaW50ZXJuYWwgU0hNIGJ1ZmZlcnMNCnVzZWQgZm9yIGZpcm13YXJlIGNv
bW11bmljYXRpb24sIEkndmUgbmV2ZXIgc2VlbiBhbnkgZHJpdmVyIHVzZSBhIERNQUJ1Zi4NCg0K
U2FtZSBhcHBsaWVzIGZvciBwcmltYXJ5IGRlY29kZSBidWZmZXJzIHdoZW4gZnJhbWUgYnVmZmVy
IGNvbXByZXNzaW9uIG9yIHBvc3QtDQpwcm9jZXNzaW5nIGl0IHVzZWQgKG9yIHJlY29uc3RydWN0
aW9uIGJ1ZmZlciBpbiBlbmNvZGVycyksIHRoZXNlIGFyZSBub3QgdXNlcg0KdmlzaWJsZSBhbmQg
YXJlIHVzdWFsbHkgbm90IERNQUJ1Zi4NCg0KPiANCj4gPiANCj4gPiBOaWNvbGFzDQo+ID4gDQo+
ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5j
b20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUu
Y29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+
DQo+ID4gPiBbWW9uZzogRml4IHRoZSBjaGVja3BhdGNoIGFsaWdubWVudCB3YXJuaW5nXQ0KPiA+
ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgfCA2MCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0tLQ0KPiA+IC0tLS0tLQ0KPiA+ID4gIGluY2x1ZGUvbGludXgv
ZG1hLWhlYXAuaCAgIHwgMjUgKysrKysrKysrKysrKysrKw0KPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgNjkgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gW3NuaXBdDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
