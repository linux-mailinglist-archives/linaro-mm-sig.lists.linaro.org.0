Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 482B9638FFD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 19:38:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4925A3EF3D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 18:38:51 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by lists.linaro.org (Postfix) with ESMTPS id A177E3EA17
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 18:38:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=sS359yY7;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f169.google.com with SMTP id 205so6026183ybf.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 10:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R113yfqtwbqC0ITDeGvhSNa3zHrb/nkgAVqOtFCA4Qc=;
        b=sS359yY7pQIaB3NIMVHYcqDqWmEn/ZMyYfc7T6oA3VOjJmqn0ykiDIAFmwHIQSbsLQ
         SwBMwRnZhBCbXGg6szCpfHmDgxIEcskbbt0mPR6iR10Lm8nOmVRFbaaGEpADctbzhWX7
         fPe0fWjas4DFr8/jjVLoxV6jKNqu62BAu3ItCwKWCUpG4SZvIJExxAKMtYoF3/lTTibB
         wtCyMudC0RoYxPe2jfPlNOdYXLMVwnasC9E0dZJpO6P7XJIkWmnvWU/WvCispvu5W9wV
         J3BwUkORUs03UIenFoYtgGx+XVyBQFc0F2NrmWWLOlFOUKkSTmiql4z9rE5LNMxJQJmf
         by+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R113yfqtwbqC0ITDeGvhSNa3zHrb/nkgAVqOtFCA4Qc=;
        b=BbWqp8FuSONqzfANw8w2Lb+29or8YwRjtbm3x1WVkeI8j2CpZ7elKzC+0SpVQXYSv+
         sNKxcQHQJhaaSfhbYc30ghQ618EG/DwaKvlDhYoSmP1XQzSThaNc+0OOJrq/Tlg017Ax
         I9mfoztRqHm+DKWeMab36iOigdGIy5HKbOh00rwmqmwblWkjqvJUe3obHJwkx+V6hum3
         6/9y7qC7eAaSy26xWNRfIkrTQDyLz9Rl2A1tlBoduEIeYKQg4bS39nvG0fyD7OFVUvT/
         TQaLzoiEu5yDuJBCFga9NJ8BpniGDXptqVyPV/ch/ZTxkf79KmCYf+WWld1zfOuAr+gz
         5x8g==
X-Gm-Message-State: ANoB5plAka4/NlL8BpzKQggmXVrfgysX0OlWZ0Gy0JKFkD0u4C4CB13w
	pxsQa/szbJ0CG6HRzlJ4BDINP7Ai7I7c3MOF9pgxSw==
X-Google-Smtp-Source: AA0mqf5AXflwQEOLKlJmJazpNyHLivko8S4A9tyMg119AsSvYjt/IFoUuaE2j1mVksysNrm0lltNF3qJhF/EdhJtEFs=
X-Received: by 2002:a25:7408:0:b0:6f2:49a7:38ef with SMTP id
 p8-20020a257408000000b006f249a738efmr6331877ybc.365.1669401521064; Fri, 25
 Nov 2022 10:38:41 -0800 (PST)
MIME-Version: 1.0
References: <20221123193519.3948105-1-tjmercier@google.com>
 <260a86f0-057e-e235-ac38-abeb922d0dc1@amd.com> <Y38z6A5IF/BlXVPp@phenom.ffwll.local>
 <63972059-1c23-ceb9-841c-1cfee29a1c77@gmail.com>
In-Reply-To: <63972059-1c23-ceb9-841c-1cfee29a1c77@gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 25 Nov 2022 10:38:30 -0800
Message-ID: <CABdmKX2QvW_7qDeosxES4jLsTDPUWS-Qphj4FaJUsqDeVQbf9A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Queue-Id: A177E3EA17
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.219.169:from];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.169:from];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R3ZY4GEH6X26SHKK5PZKDM2IJQKB4HC4
X-Message-ID-Hash: R3ZY4GEH6X26SHKK5PZKDM2IJQKB4HC4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: A collection of typo and documentation fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R3ZY4GEH6X26SHKK5PZKDM2IJQKB4HC4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgMjQsIDIwMjIgYXQgMTo0MyBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBBbSAyNC4xMS4yMiB1bSAx
MDowNSBzY2hyaWViIERhbmllbCBWZXR0ZXI6DQo+ID4gT24gVGh1LCBOb3YgMjQsIDIwMjIgYXQg
MDg6MDM6MDlBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPj4gQW0gMjMuMTEu
MjIgdW0gMjA6MzUgc2NocmllYiBULkouIE1lcmNpZXI6DQo+ID4+PiBJJ3ZlIGJlZW4gY29sbGVj
dGluZyB0aGVzZSB0eXBvIGZpeGVzIGZvciBhIHdoaWxlIGFuZCBpdCBmZWVscyBsaWtlDQo+ID4+
PiB0aW1lIHRvIHNlbmQgdGhlbSBpbi4NCj4gPj4+DQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBULkou
IE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+PiBBY2tlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+IFdpbGwgeW91IGFsc28gcHVz
aCB0aGlzPyBJIHRoaW5rIHRqIGRvZXNuJ3QgaGF2ZSBjb21taXQgcmlnaHRzIHlldCwgYW5kIEkN
Cj4gPiBzb21laG93IGNhbid0IHNlZSB0aGUgcGF0Y2ggbG9jYWxseSAoSSBndWVzcyBpdCdzIHN0
dWNrIGluIG1vZGVyYXRpb24pLg0KPg0KPiBJIHdhcyBqdXN0IGFib3V0IHRvIGNvbXBsYWluIHRo
YXQgdGhpcyBkb2Vzbid0IGFwcGx5IGNsZWFubHkgdG8NCj4gZHJtLW1pc2MtbmV4dC4NCj4NCj4g
VHJpdmlhbCBwcm9ibGVtLCBvbmUgb2YgdGhlIHR5cG9zIHdhcyBqdXN0IHJlbW92ZWQgYnkgRGlt
aXRyeSBhIGZldw0KPiB3ZWVrcyBhZ28uDQo+DQo+IEkndmUgZml4ZWQgdGhhdCB1cCBsb2NhbGx5
IGFuZCBwdXNoZWQgdGhlIHJlc3VsdCwgYnV0IG5ldmVydGhlbGVzcw0KPiBwbGVhc2UgbWFrZSBz
dXJlIHRoYXQgRE1BLWJ1ZiBwYXRjaGVzIGFyZSBiYXNlZCBvbiB0aGUgZHJtIGJyYW5jaGVzLg0K
Pg0KSSdtIHNvcnJ5LCB0aGlzIHdhcyBvbiB0b3Agb2YgYSByYW5kb20gc3BvdCBpbiBMaW51cydz
IDYuMS1yYzUuDQooODQzNjhkODgyYjk2IE1lcmdlIHRhZyAnc29jLWZpeGVzLTYuMS0zJykgSSdt
IG5vdCBzdXJlIHdoeSBJIGRpZA0KdGhhdCwgYnV0IEkgc3VzcGVjdCBpdCB3YXMgYWZ0ZXIgYSBm
cmVzaCBnaXQgcHVsbC4gSSBoYXZlIHRvbyBtYW55DQpyZXBvcy4NCg0KVGhhbmtzIGFsbCBmb3Ig
dGhlIHJldmlld3MuDQoNCj4gVGhhbmtzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4gLURhbmllbA0K
PiA+DQo+ID4+PiAtLS0NCj4gPj4+ICAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxNCAr
KysrKysrLS0tLS0tLQ0KPiA+Pj4gICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8ICA2ICsr
Ky0tLQ0KPiA+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMCBkZWxl
dGlvbnMoLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gPj4+IGluZGV4IGRkMGY4M2VlNTA1
Yi4uNjE0Y2NkMjA4YWY0IDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYw0KPiA+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiA+Pj4gQEAgLTEx
NDEsNyArMTE0MSw3IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdW5tYXBfYXR0YWNo
bWVudCwgRE1BX0JVRik7DQo+ID4+PiAgICAgKg0KPiA+Pj4gICAgICogQGRtYWJ1ZjogICAgICBb
aW5dICAgIGJ1ZmZlciB3aGljaCBpcyBtb3ZpbmcNCj4gPj4+ICAgICAqDQo+ID4+PiAtICogSW5m
b3JtcyBhbGwgYXR0YWNobWVuc3QgdGhhdCB0aGV5IG5lZWQgdG8gZGVzdHJveSBhbmQgcmVjcmVh
dGVkIGFsbCB0aGVpcg0KPiA+Pj4gKyAqIEluZm9ybXMgYWxsIGF0dGFjaG1lbnRzIHRoYXQgdGhl
eSBuZWVkIHRvIGRlc3Ryb3kgYW5kIHJlY3JlYXRlIGFsbCB0aGVpcg0KPiA+Pj4gICAgICogbWFw
cGluZ3MuDQo+ID4+PiAgICAgKi8NCj4gPj4+ICAgIHZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPiA+Pj4gQEAgLTExNTksMTEgKzExNTksMTEgQEAgRVhQ
T1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tb3ZlX25vdGlmeSwgRE1BX0JVRik7DQo+ID4+PiAg
ICAvKioNCj4gPj4+ICAgICAqIERPQzogY3B1IGFjY2Vzcw0KPiA+Pj4gICAgICoNCj4gPj4+IC0g
KiBUaGVyZSBhcmUgbXV0bGlwbGUgcmVhc29ucyBmb3Igc3VwcG9ydGluZyBDUFUgYWNjZXNzIHRv
IGEgZG1hIGJ1ZmZlciBvYmplY3Q6DQo+ID4+PiArICogVGhlcmUgYXJlIG11bHRpcGxlIHJlYXNv
bnMgZm9yIHN1cHBvcnRpbmcgQ1BVIGFjY2VzcyB0byBhIGRtYSBidWZmZXIgb2JqZWN0Og0KPiA+
Pj4gICAgICoNCj4gPj4+ICAgICAqIC0gRmFsbGJhY2sgb3BlcmF0aW9ucyBpbiB0aGUga2VybmVs
LCBmb3IgZXhhbXBsZSB3aGVuIGEgZGV2aWNlIGlzIGNvbm5lY3RlZA0KPiA+Pj4gICAgICogICBv
dmVyIFVTQiBhbmQgdGhlIGtlcm5lbCBuZWVkcyB0byBzaHVmZmxlIHRoZSBkYXRhIGFyb3VuZCBm
aXJzdCBiZWZvcmUNCj4gPj4+IC0gKiAgIHNlbmRpbmcgaXQgYXdheS4gQ2FjaGUgY29oZXJlbmN5
IGlzIGhhbmRsZWQgYnkgYnJha2V0aW5nIGFueSB0cmFuc2FjdGlvbnMNCj4gPj4+ICsgKiAgIHNl
bmRpbmcgaXQgYXdheS4gQ2FjaGUgY29oZXJlbmN5IGlzIGhhbmRsZWQgYnkgYnJhY2tldGluZyBh
bnkgdHJhbnNhY3Rpb25zDQo+ID4+PiAgICAgKiAgIHdpdGggY2FsbHMgdG8gZG1hX2J1Zl9iZWdp
bl9jcHVfYWNjZXNzKCkgYW5kIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKQ0KPiA+Pj4gICAgICog
ICBhY2Nlc3MuDQo+ID4+PiAgICAgKg0KPiA+Pj4gQEAgLTExOTAsNyArMTE5MCw3IEBAIEVYUE9S
VF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfbW92ZV9ub3RpZnksIERNQV9CVUYpOw0KPiA+Pj4gICAg
ICogICByZXBsYWNlIElPTiBidWZmZXJzIG1tYXAgc3VwcG9ydCB3YXMgbmVlZGVkLg0KPiA+Pj4g
ICAgICoNCj4gPj4+ICAgICAqICAgVGhlcmUgaXMgbm8gc3BlY2lhbCBpbnRlcmZhY2VzLCB1c2Vy
c3BhY2Ugc2ltcGx5IGNhbGxzIG1tYXAgb24gdGhlIGRtYS1idWYNCj4gPj4+IC0gKiAgIGZkLiBC
dXQgbGlrZSBmb3IgQ1BVIGFjY2VzcyB0aGVyZSdzIGEgbmVlZCB0byBicmFrZXQgdGhlIGFjdHVh
bCBhY2Nlc3MsDQo+ID4+PiArICogICBmZC4gQnV0IGxpa2UgZm9yIENQVSBhY2Nlc3MgdGhlcmUn
cyBhIG5lZWQgdG8gYnJhY2tldCB0aGUgYWN0dWFsIGFjY2VzcywNCj4gPj4+ICAgICAqICAgd2hp
Y2ggaXMgaGFuZGxlZCBieSB0aGUgaW9jdGwgKERNQV9CVUZfSU9DVExfU1lOQykuIE5vdGUgdGhh
dA0KPiA+Pj4gICAgICogICBETUFfQlVGX0lPQ1RMX1NZTkMgY2FuIGZhaWwgd2l0aCAtRUFHQUlO
IG9yIC1FSU5UUiwgaW4gd2hpY2ggY2FzZSBpdCBtdXN0DQo+ID4+PiAgICAgKiAgIGJlIHJlc3Rh
cnRlZC4NCj4gPj4+IEBAIC0xMjY0LDEwICsxMjY0LDEwIEBAIHN0YXRpYyBpbnQgX19kbWFfYnVm
X2JlZ2luX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gPj4+ICAgICAqIHBy
ZXBhcmF0aW9ucy4gQ29oZXJlbmN5IGlzIG9ubHkgZ3VhcmFudGVlZCBpbiB0aGUgc3BlY2lmaWVk
IHJhbmdlIGZvciB0aGUNCj4gPj4+ICAgICAqIHNwZWNpZmllZCBhY2Nlc3MgZGlyZWN0aW9uLg0K
PiA+Pj4gICAgICogQGRtYWJ1ZjogICAgICBbaW5dICAgIGJ1ZmZlciB0byBwcmVwYXJlIGNwdSBh
Y2Nlc3MgZm9yLg0KPiA+Pj4gLSAqIEBkaXJlY3Rpb246ICAgICBbaW5dICAgIGxlbmd0aCBvZiBy
YW5nZSBmb3IgY3B1IGFjY2Vzcy4NCj4gPj4+ICsgKiBAZGlyZWN0aW9uOiAgICAgW2luXSAgICBk
aXJlY3Rpb24gb2YgYWNjZXNzLg0KPiA+Pj4gICAgICoNCj4gPj4+ICAgICAqIEFmdGVyIHRoZSBj
cHUgYWNjZXNzIGlzIGNvbXBsZXRlIHRoZSBjYWxsZXIgc2hvdWxkIGNhbGwNCj4gPj4+IC0gKiBk
bWFfYnVmX2VuZF9jcHVfYWNjZXNzKCkuIE9ubHkgd2hlbiBjcHUgYWNjZXNzIGlzIGJyYWtldGVk
IGJ5IGJvdGggY2FsbHMgaXMNCj4gPj4+ICsgKiBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKCkuIE9u
bHkgd2hlbiBjcHUgYWNjZXNzIGlzIGJyYWNrZXRlZCBieSBib3RoIGNhbGxzIGlzDQo+ID4+PiAg
ICAgKiBpdCBndWFyYW50ZWVkIHRvIGJlIGNvaGVyZW50IHdpdGggb3RoZXIgRE1BIGFjY2Vzcy4N
Cj4gPj4+ICAgICAqDQo+ID4+PiAgICAgKiBUaGlzIGZ1bmN0aW9uIHdpbGwgYWxzbyB3YWl0IGZv
ciBhbnkgRE1BIHRyYW5zYWN0aW9ucyB0cmFja2VkIHRocm91Z2gNCj4gPj4+IEBAIC0xMzA3LDcg
KzEzMDcsNyBAQCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Ms
IERNQV9CVUYpOw0KPiA+Pj4gICAgICogYWN0aW9ucy4gQ29oZXJlbmN5IGlzIG9ubHkgZ3VhcmFu
dGVlZCBpbiB0aGUgc3BlY2lmaWVkIHJhbmdlIGZvciB0aGUNCj4gPj4+ICAgICAqIHNwZWNpZmll
ZCBhY2Nlc3MgZGlyZWN0aW9uLg0KPiA+Pj4gICAgICogQGRtYWJ1ZjogICAgICBbaW5dICAgIGJ1
ZmZlciB0byBjb21wbGV0ZSBjcHUgYWNjZXNzIGZvci4NCj4gPj4+IC0gKiBAZGlyZWN0aW9uOiAg
ICAgW2luXSAgICBsZW5ndGggb2YgcmFuZ2UgZm9yIGNwdSBhY2Nlc3MuDQo+ID4+PiArICogQGRp
cmVjdGlvbjogICAgIFtpbl0gICAgZGlyZWN0aW9uIG9mIGFjY2Vzcy4NCj4gPj4+ICAgICAqDQo+
ID4+PiAgICAgKiBUaGlzIHRlcm1pbmF0ZXMgQ1BVIGFjY2VzcyBzdGFydGVkIHdpdGggZG1hX2J1
Zl9iZWdpbl9jcHVfYWNjZXNzKCkuDQo+ID4+PiAgICAgKg0KPiA+Pj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gPj4+IGlu
ZGV4IDcxNzMxNzk2YzhjMy4uMWQ2MWE0ZjZkYjM1IDEwMDY0NA0KPiA+Pj4gLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgNCj4gPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+
ID4+PiBAQCAtMzMwLDcgKzMzMCw3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4gPj4+ICAgICAgKiBA
bG9jazoNCj4gPj4+ICAgICAgKg0KPiA+Pj4gICAgICAqIFVzZWQgaW50ZXJuYWxseSB0byBzZXJp
YWxpemUgbGlzdCBtYW5pcHVsYXRpb24sIGF0dGFjaC9kZXRhY2ggYW5kDQo+ID4+PiAtICAgICog
dm1hcC91bm1hcC4gTm90ZSB0aGF0IGluIG1hbnkgY2FzZXMgdGhpcyBpcyBzdXBlcnNlZWRlZCBi
eQ0KPiA+Pj4gKyAgICAqIHZtYXAvdW5tYXAuIE5vdGUgdGhhdCBpbiBtYW55IGNhc2VzIHRoaXMg
aXMgc3VwZXJzZWRlZCBieQ0KPiA+Pj4gICAgICAqIGRtYV9yZXN2X2xvY2soKSBvbiBAcmVzdi4N
Cj4gPj4+ICAgICAgKi8NCj4gPj4+ICAgICBzdHJ1Y3QgbXV0ZXggbG9jazsNCj4gPj4+IEBAIC0z
NjUsNyArMzY1LDcgQEAgc3RydWN0IGRtYV9idWYgew0KPiA+Pj4gICAgICAqLw0KPiA+Pj4gICAg
IGNvbnN0IGNoYXIgKm5hbWU7DQo+ID4+PiAtICAgLyoqIEBuYW1lX2xvY2s6IFNwaW5sb2NrIHRv
IHByb3RlY3QgbmFtZSBhY2NlcyBmb3IgcmVhZCBhY2Nlc3MuICovDQo+ID4+PiArICAgLyoqIEBu
YW1lX2xvY2s6IFNwaW5sb2NrIHRvIHByb3RlY3QgbmFtZSBhY2Nlc3MgZm9yIHJlYWQgYWNjZXNz
LiAqLw0KPiA+Pj4gICAgIHNwaW5sb2NrX3QgbmFtZV9sb2NrOw0KPiA+Pj4gICAgIC8qKg0KPiA+
Pj4gQEAgLTQwMiw3ICs0MDIsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiB7DQo+ID4+PiAgICAgICogICBh
bnl0aGluZyB0aGUgdXNlcnNwYWNlIEFQSSBjb25zaWRlcnMgd3JpdGUgYWNjZXNzLg0KPiA+Pj4g
ICAgICAqDQo+ID4+PiAgICAgICogLSBEcml2ZXJzIG1heSBqdXN0IGFsd2F5cyBhZGQgYSB3cml0
ZSBmZW5jZSwgc2luY2UgdGhhdCBvbmx5DQo+ID4+PiAtICAgICogICBjYXVzZXMgdW5lY2Vzc2Fy
aWx5IHN5bmNocm9uaXphdGlvbiwgYnV0IG5vIGNvcnJlY3RuZXNzIGlzc3Vlcy4NCj4gPj4+ICsg
ICAgKiAgIGNhdXNlcyB1bm5lY2Vzc2FyeSBzeW5jaHJvbml6YXRpb24sIGJ1dCBubyBjb3JyZWN0
bmVzcyBpc3N1ZXMuDQo+ID4+PiAgICAgICoNCj4gPj4+ICAgICAgKiAtIFNvbWUgZHJpdmVycyBv
bmx5IGV4cG9zZSBhIHN5bmNocm9ub3VzIHVzZXJzcGFjZSBBUEkgd2l0aCBubw0KPiA+Pj4gICAg
ICAqICAgcGlwZWxpbmluZyBhY3Jvc3MgZHJpdmVycy4gVGhlc2UgZG8gbm90IHNldCBhbnkgZmVu
Y2VzIGZvciB0aGVpcg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
