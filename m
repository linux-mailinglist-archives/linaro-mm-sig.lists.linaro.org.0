Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C80C061071F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 03:12:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCA1D3F5A4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 01:12:02 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id 5CFFD3F4D7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 01:11:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="qjm6RD/R";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id p127so4653830oih.9
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 18:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EA/rRsqesB5knK6U60b9qGTqZ/vIiOct5OFzn794j8=;
        b=qjm6RD/RmBJahmvvVeY6o5kMWk/aRac6DF01OEVkSagU9ZipwnIjs8nfU7VZkcm2VY
         8+830Hy6A+I4LhTVia6tejtfM50lm/SIRDBJBSS2d09WfaoXuQQwptw2839hi1Oj5C0Y
         wmlkeuT+o9nWmposOEhB7ronNJt0pnA3b/Qfo6WNR4xb9lqUwYGfD7TxKvWiP1QFZxSz
         W88DQ14iQwoTNwiOuaTSYE7XwQNdiogY0ySbppLTd2CNAssVlJQF7/2LXD0S69e/JHUw
         zVAVjEgPAAjiVLOOheAzz0hW4SQ+yQYAHFAfiYJ7tTh+QMLxSQ3Xf3+KfFKtpa17GxiT
         A8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5EA/rRsqesB5knK6U60b9qGTqZ/vIiOct5OFzn794j8=;
        b=aP1DHHCtfoVkhKZdPN0X7MvrohkZ4PJZwzRBgw+dXoV1mKtckG4zVlg7/thEmBO3P+
         sE0u2atW/5zVyYJce7AMdjAeGmwdKvlJJn4WeQLV+Xjb4Tgvty4UEFoEdaMYanJjxAe3
         TOEjk7soYuL1kjJ2dZUzibKsx7ctV8/0G9soowzU4VS5RdVJ+trbA4bSKzaElP5T52lt
         KQsKiOVsXmzQ7MQv3qCLHMRzLQWQRedfplQO/V+b5riLYOt11/dC860iUnLAvUK7xwCf
         U8aehruZSDbn7aBDGiaIXVZTC4OtPQWL9Up1p02rOlwiidR7R5MnEelBkk86fdLgm5Ld
         OUxw==
X-Gm-Message-State: ACrzQf1G2kn9tEA/OspWIfFESMSdwp26ge584ynKNePnIbLwJphTL9b+
	jksq9ARrATKEvToMKgbIr5rKJOOJ9hk1ayERkr8=
X-Google-Smtp-Source: AMsMyM69+M9JkB7n7pEjm9pG4X2UrOlWxyLLPQP8olANKeo9vGbNd7nNGot4Jggqx2IeD4VJZouh8j2E5wD/aymEsNA=
X-Received: by 2002:a05:6808:8f4:b0:354:946e:8dc5 with SMTP id
 d20-20020a05680808f400b00354946e8dc5mr6340635oic.183.1666919505708; Thu, 27
 Oct 2022 18:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <20221020121316.3946-3-christian.koenig@amd.com> <CAF6AEGsw=J6Y5jd0A5_hVg1A5BF87hz00Ggmbi8OtTjPJKMDGA@mail.gmail.com>
 <fd168175-71ce-2a9e-f8f1-1cc66e052235@amd.com>
In-Reply-To: <fd168175-71ce-2a9e-f8f1-1cc66e052235@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 27 Oct 2022 18:11:56 -0700
Message-ID: <CAF6AEGuCZpKQMH6mra97tZNOFq8kryoCoi-8V21zmmCyGyZDZQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 5CFFD3F4D7
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.167.175:from];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.886];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,pengutronix.de,ndufresne.ca,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.175:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ZGMITQKV3GSSQIIUEPV5A2IDR4HGDURP
X-Message-ID-Hash: ZGMITQKV3GSSQIIUEPV5A2IDR4HGDURP
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] drm/prime: set the dma_coherent flag for export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGMITQKV3GSSQIIUEPV5A2IDR4HGDURP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMjAsIDIwMjIgYXQgNzo1NyBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMjAuMTAuMjIgdW0gMTY6NDMgc2No
cmllYiBSb2IgQ2xhcms6DQo+ID4gT24gVGh1LCBPY3QgMjAsIDIwMjIgYXQgNToxMyBBTSBDaHJp
c3RpYW4gS8O2bmlnDQo+ID4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90
ZToNCj4gPj4gV2hlbiBhIGRldmljZSBkcml2ZXIgaXMgc25vb3BpbmcgdGhlIENQVSBjYWNoZSBk
dXJpbmcgYWNjZXNzIHdlIGFzc3VtZQ0KPiA+PiB0aGF0IGFsbCBpbXBvcnRlcnMgbmVlZCB0byBi
ZSBhYmxlIHRvIHNub29wIHRoZSBDUFUgY2FjaGUgYXMgd2VsbC4NCj4gPj4NCj4gPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+
PiAtLS0NCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgfCAyICsrDQo+ID4+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5j
DQo+ID4+IGluZGV4IDIwZTEwOWE4MDJhZS4uZDVjNzBiNmZlOGE0IDEwMDY0NA0KPiA+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jDQo+ID4+IEBAIC0yOCw2ICsyOCw3IEBADQo+ID4+DQo+ID4+ICAgI2luY2x1
ZGUgPGxpbnV4L2V4cG9ydC5oPg0KPiA+PiAgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+
ID4+ICsjaW5jbHVkZSA8bGludXgvZG1hLW1hcC1vcHMuaD4NCj4gPj4gICAjaW5jbHVkZSA8bGlu
dXgvcmJ0cmVlLmg+DQo+ID4+ICAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiA+Pg0KPiA+
PiBAQCAtODg5LDYgKzg5MCw3IEBAIHN0cnVjdCBkbWFfYnVmICpkcm1fZ2VtX3ByaW1lX2V4cG9y
dChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwNCj4gPj4gICAgICAgICAgICAgICAgICAuc2l6
ZSA9IG9iai0+c2l6ZSwNCj4gPj4gICAgICAgICAgICAgICAgICAuZmxhZ3MgPSBmbGFncywNCj4g
Pj4gICAgICAgICAgICAgICAgICAucHJpdiA9IG9iaiwNCj4gPj4gKyAgICAgICAgICAgICAgIC5j
b2hlcmVudCA9IGRldl9pc19kbWFfY29oZXJlbnQoZGV2LT5kZXYpLA0KPiA+IFRvIHNldCB0aGUg
Y29oZXJlbnQgZmxhZyBjb3JyZWN0bHksIEkgdGhpbmsgSSdkIG5lZWQgYSB3YXkgdG8gb3ZlcnJp
ZGUNCj4gPiBvbiBhIHBlciBidWZmZXIgYmFzaXMsIHNpbmNlIGNvaGVyZW5jeSBpcyBhIHByb3Bl
cnR5IG9mIHRoZSBncHUNCj4gPiBwZ3RhYmxlcyAod2hpY2ggaW4gdGhlIG1zbSBjYXNlIGlzIGFu
IGltbXV0YWJsZSBwcm9wZXJ0eSBvZiB0aGUgZ2VtDQo+ID4gb2JqZWN0KS4gIFdlIGFsc28gaGF2
ZSBzb21lIGF3a3dhcmRuZXNzIHRoYXQgZHJtLT5kZXYgaXNuJ3QgYWN0dWFsbHkNCj4gPiB0aGUg
R1BVLCB0aGFua3MgdG8gdGhlIGtlcm5lbHMgZGV2aWNlIG1vZGVsIHNlZWluZyBhIGNvbGxlY3Rp
b24gb2YNCj4gPiBvdGhlciBzbWFsbCBkZXZpY2VzIHNob2Vob3JuZWQgaW50byBhIHNpbmdsZSBk
cm0gZGV2aWNlIHRvIGZpdA0KPiA+IHVzZXJzcGFjZSdzIHZpZXcgb2YgdGhlIHdvcmxkLiAgU28g
cmVseWluZyBvbiBkcm0tPmRldiBpc24ndCByZWFsbHkNCj4gPiBnb2luZyB0byBnaXZlIHNlbnNp
YmxlIHJlc3VsdHMuDQo+DQo+IFllYWgsIEkndmUgdGhlIHNhbWUgcHJvYmxlbSBmb3IgYW1kZ3B1
IHdoZXJlIHNvbWUgYnVmZmVycyBhcmUgc25vb3BlZA0KPiB3aGlsZSBvdGhlcnMgYXJlbid0Lg0K
Pg0KPiBCdXQgdGhpcyBzaG91bGQgYmUgdW5wcm9ibGVtYXRpYyBzaW5jZSB0aGUgZmxhZyBjYW4g
YWx3YXlzIGJlIGNsZWFyZWQgYnkNCj4gdGhlIGRyaXZlciBsYXRlciBvbiAoaXQganVzdCBjYW4n
dCBiZSBzZXQpLg0KPg0KPiBBZGRpdGlvbmFsIHRvIHRoYXQgSSd2ZSBqdXN0IG5vdGVkIHRoYXQg
YXJtYWRhLCBpOTE1LCBvbWFwIGFuZCB0ZWdyYSB1c2UNCj4gdGhlaXIgb3duIERNQS1idWYgZXhw
b3J0IGZ1bmN0aW9uLiBNU00gY291bGQgZG8gdGhlIHNhbWUgYXMgd2VsbCBpZiB0aGUNCj4gZGV2
aWNlIGl0c2VsZiBpcyBtYXJrZWQgYXMgbm90IGNvaGVyZW50IHdoaWxlIHNvbWUgYnVmZmVycyBh
cmUgbWFwcGVkDQo+IGNhY2hlIGNvaGVyZW50Lg0KDQp5ZWFoLCBJIGd1ZXNzIHRoYXQgd291bGQg
d29yay4uIGl0IHdvdWxkIGJlIGEgYml0IHVuZm9ydHVuYXRlIHRvIG5lZWQNCnRvIHVzZSBvdXIg
b3duIGV4cG9ydCBmdW5jdGlvbiwgYnV0IEkgZ3Vlc3MgaXQgaXMgYSBzbWFsbCBwcmljZSB0byBw
YXkNCmFuZCBJIGxpa2UgdGhlIG92ZXJhbGwgaWRlYSwgc28gYS1iIGZvciB0aGUgc2VyaWVzDQoN
CkZvciB0aGUgVk1NIGNhc2UsIGl0IHdvdWxkIGJlIG5pY2UgdG8gZXhwb3NlIHRoaXMgdG8gdXNl
cnNwYWNlLCBidXQNCkkndmUgc2VudCBhIHBhdGNoIHRvIGRvIHRoaXMgaW4gYW4gbXNtIHNwZWNp
ZmljIHdheSwgYW5kIEkgZ3Vlc3MgYXQNCmxlYXN0IHNvbHZpbmcgdGhhdCBwcm9ibGVtIGZvciBv
bmUgZHJpdmVyIGFuZCBiZXR0ZXIgdGhhbiB0aGUgY3VycmVudA0Kc3RhdGUgb2YgImlmZiBkcml2
ZXIgPT0gImk5MTUiIHsgaXQncyBtbWFwJ2QgY2FjaGVkIH0gZWxzZSB7IGl0J3MNCndyaXRlY29t
YmluZSB9IiBpbiBjcm9zdm0NCg0KQWRtaXR0ZWRseSB0aGUgVk1NIGNhc2UgaXMgYSByYXRoZXIg
c3BlY2lhbCBjYXNlIGNvbXBhcmVkIHRvIHlvdXINCmF2ZXJhZ2UgdXNlcnNwYWNlIGRlYWxpbmcg
d2l0aCBkbWFidWYncywgYnV0IGl0IHdvdWxkIGJlIG5pY2UgdG8gZ2V0DQpvdXQgb2YgdGhlIGN1
cnJlbnQgc2l0dWF0aW9uIHdoZXJlIGl0IGlzIGhhdmluZyB0byBtYWtlIGFzc3VtcHRpb25zDQp3
aGljaCBhcmUgcXVpdGUgcG9zc2libHkgd3JvbmcsIHNvIGdpdmluZyB0aGUgVk1NIHNvbWUgaW5m
b3JtYXRpb24NCmV2ZW4gaWYgaXQgaXMgInRoZSBjYWNoYWJpbGl0eSBpc24ndCBzdGF0aWMsIHlv
dSBzaG91bGQgYmFpbCBub3cgaWYNCnlvdXIgYXJjaCBjYW4ndCBjb3BlIiB3b3VsZCBiZSBhbiBp
bXByb3ZlbWVudC4gIChGb3IgYmFja2dyb3VuZCwgdGhpcw0KY2FzZSBpcyBhbHNvIGEgYml0IHNw
ZWNpZmljIGZvciBhbmRyb2lkL2dyYWxsb2MuLiBmb3IgZHJpdmVyIGFsbG9jYXRlZA0KYnVmZmVy
cyBpbiBhIFZNLCB3aXRoIHRoZSBuYXRpdmUgdXNlcm1vZGUgZHJpdmVyIChVTUQpIGluIGd1ZXN0
LCB5b3UNCnN0aWxsIGhhdmUgc29tZSBjb250cm9sIHdpdGhpbiB0aGUgVU1EKQ0KDQpCUiwNCi1S
DQoNCg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4gSSBndWVzcyBtc20gY291bGQg
anVzdCBidXJ5IG91ciBoZWFkcyBpbiB0aGUgc2FuZCBhbmQgY29udGludWUgdG8gZG8NCj4gPiB0
aGluZ3MgdGhlIHdheSB3ZSBoYXZlIGJlZW4gKGJ1ZmZlcnMgdGhhdCBhcmUgbWFwcGVkIGNhY2hl
ZC1jb2hlcmVudA0KPiA+IGFyZSBvbmx5IHNlbGYtc2hhcmVkKSBidXQgd291bGQgYmUgbmljZSB0
byBjYXRjaCBpZiB1c2Vyc3BhY2UgdHJpZWQgdG8NCj4gPiBpbXBvcnQgb25lIGludG8gKGZvciBl
eCkgdjRsMi4uDQo+ID4NCj4gPiBCUiwNCj4gPiAtUg0KPiA+DQo+ID4+ICAgICAgICAgICAgICAg
ICAgLnJlc3YgPSBvYmotPnJlc3YsDQo+ID4+ICAgICAgICAgIH07DQo+ID4+DQo+ID4+IC0tDQo+
ID4+IDIuMjUuMQ0KPiA+Pg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
