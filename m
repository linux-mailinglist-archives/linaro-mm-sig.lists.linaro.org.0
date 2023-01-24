Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D62DA678F70
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 05:46:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2FF63EE0B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 04:46:11 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lists.linaro.org (Postfix) with ESMTPS id 2A1B83EE0B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 04:45:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=Tvm51t9n;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.174 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-4a263c4ddbaso202655877b3.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 20:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vpDuDoUmAharZ6gl8wrxfOGmWcIqGpZbtAgCtCtKKLE=;
        b=Tvm51t9nJyP5NJhhaS/ZGI0R/NlPYvz5bpxgJfthc8I6LZbmT3ZTAU6Js9JosvVmNH
         C0PKQYWKkkaGDJNQZ/v6SVtKE8git3A7oLNETlGr8cpXpDmldcZ5YArR6++7eQ1X1cur
         L9uy07Q/qOMNBp9/SrYYRTMo+1y25L4w6kKCLqzXY3uaKXFcY4HpxV9xU7EnmuyA0j0A
         JDHkQTSJEYsrqAHhFkSWNERYxM5eVX53LgWbNhyxzaJuViBiVE/Y+xRp1/+a03u8+nfW
         cMI2u31cFbxCpNR1QfOdeoTutka9CIu8Oj4CsVENc59YK8AlA9pC00pVmR1uiuKoJnp5
         bxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vpDuDoUmAharZ6gl8wrxfOGmWcIqGpZbtAgCtCtKKLE=;
        b=aHEN+y+Gr6AGAH2soNEIgojG7KjZ10AbqtMY3LiD4rTODiPAPuZOiWfB/tz0eEduXt
         w/hUGac+IGrb9N81fRsh4bEFiiLIw1XX+TI0CIvChXM/phnsDx3b5goJ9sQE4gFQXzYL
         BJ7Yr95RrtsftC5mD0oV1uK0+Q3vpt87nB54M7O1+lQnr8aScuqpDHZV29uDVXVcZgCZ
         tLr6cAPAMqk28guNEAY9nQgiow0FtwVWFr6WOl2kU1RLikf+199uANtrZsgiwhsb/ySR
         PNQsRKdrpDef3ksxMYIhdLwIPUui5cwhXSF+eysLYcvO3kGAwhE/QWSmquqDA/J/q/v+
         LiyQ==
X-Gm-Message-State: AFqh2kot7UdDgcEh/wEAt9gffcXiYhKG90m6VX8A0UN8oGc7wwbmBCg6
	dUeEnokLXSfasYwrQO8ykh/W0topVLve3R0eN9j3
X-Google-Smtp-Source: AMrXdXtWz4zPSzmzj1jg67d48nmLGEWV/YMdXmAzJach/udjMYLSlzxrS/AMfRarkB5p7ok+TfCRWhh2bFqBa/fVwVE=
X-Received: by 2002:a81:9ace:0:b0:4ed:5f50:1a43 with SMTP id
 r197-20020a819ace000000b004ed5f501a43mr3696499ywg.291.1674535554577; Mon, 23
 Jan 2023 20:45:54 -0800 (PST)
MIME-Version: 1.0
References: <20230123123756.401692-1-christian.koenig@amd.com> <20230123123756.401692-2-christian.koenig@amd.com>
In-Reply-To: <20230123123756.401692-2-christian.koenig@amd.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 23 Jan 2023 20:45:43 -0800
Message-ID: <CANDhNCoxiX7Lc0qECEQOn3c2gP26ju5zdYuQfoTbPjqpjwebsA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2A1B83EE0B
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.128.174:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,arm.com,ideasonboard.com,kernel.org,google.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.174:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[google.com:+];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: VTBLMGGMPE5LEXQUXV5OZOBRDEP4FJ7T
X-Message-ID-Hash: VTBLMGGMPE5LEXQUXV5OZOBRDEP4FJ7T
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, laurent.pinchart@ideasonboard.com, mchehab@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-heap: add device link and unlink functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTBLMGGMPE5LEXQUXV5OZOBRDEP4FJ7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMjMsIDIwMjMgYXQgNDozOCBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBUaGlzIGFsbG93cyBkZXZp
Y2UgZHJpdmVycyB0byBzcGVjaWZ5IGEgRE1BLWhlYXAgd2hlcmUgdGhleSB3YW50IHRoZWlyDQo+
IGJ1ZmZlcnMgdG8gYmUgYWxsb2NhdGVkIGZyb20uIFRoaXMgaW5mb3JtYXRpb24gaXMgdGhlbiBl
eHBvc2VkIGFzDQo+IHN5c2ZzIGxpbmsgYmV0d2VlbiB0aGUgZGV2aWNlIGFuZCB0aGUgRE1BLWhl
YXAuDQo+DQo+IFVzZWZ1bCBmb3IgdXNlcnNwYWNlIHdoZW4gaW4gbmVlZCB0byBkZWNpZGUgZnJv
bSB3aGljaCBwcm92aWRlciB0bw0KPiBhbGxvY2F0ZSBhIGJ1ZmZlci4NCj4NCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpIZXkg
Q2hyaXN0aWFuIQ0KICBUaGFua3Mgc28gbXVjaCBmb3Igc2VuZGluZyB0aGlzIG91dCBhbmQgYWxz
byB0aGFua3MgZm9yIGluY2x1ZGluZyBtZQ0KKEFkZGluZyBUSiBhcyB3ZWxsKSENCg0KVGhpcyBs
b29rcyBsaWtlIGEgcmVhbGx5IGludGVyZXN0aW5nIGFwcHJvYWNoLCBidXQgSSBoYXZlIGEgZmV3
IHRob3VnaHRzIGJlbG93Lg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMg
fCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQ0KPiAgaW5jbHVkZS9s
aW51eC9kbWEtaGVhcC5oICAgfCAzNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPg0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWhlYXAuYw0KPiBpbmRleCBjOWU0MWU4YTllMjcuLjBmN2NmNzEzYzIyZiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1oZWFwLmMNCj4gQEAgLTMxLDYgKzMxLDcgQEANCj4gICAqIEBoZWFwX2RldnQgICAg
ICAgICAgaGVhcCBkZXZpY2Ugbm9kZQ0KPiAgICogQGxpc3QgICAgICAgICAgICAgICBsaXN0IGhl
YWQgY29ubmVjdGluZyB0byBsaXN0IG9mIGhlYXBzDQo+ICAgKiBAaGVhcF9jZGV2ICAgICAgICAg
IGhlYXAgY2hhciBkZXZpY2UNCj4gKyAqIEBkZXY6ICAgICAgICAgICAgICAgaGVhcCBkZXZpY2Ug
aW4gc3lzZnMNCj4gICAqDQo+ICAgKiBSZXByZXNlbnRzIGEgaGVhcCBvZiBtZW1vcnkgZnJvbSB3
aGljaCBidWZmZXJzIGNhbiBiZSBtYWRlLg0KPiAgICovDQo+IEBAIC00MSw2ICs0Miw3IEBAIHN0
cnVjdCBkbWFfaGVhcCB7DQo+ICAgICAgICAgZGV2X3QgaGVhcF9kZXZ0Ow0KPiAgICAgICAgIHN0
cnVjdCBsaXN0X2hlYWQgbGlzdDsNCj4gICAgICAgICBzdHJ1Y3QgY2RldiBoZWFwX2NkZXY7DQo+
ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2Ow0KPiAgfTsNCj4NCj4gIHN0YXRpYyBMSVNUX0hF
QUQoaGVhcF9saXN0KTsNCj4gQEAgLTQ5LDYgKzUxLDMzIEBAIHN0YXRpYyBkZXZfdCBkbWFfaGVh
cF9kZXZ0Ow0KPiAgc3RhdGljIHN0cnVjdCBjbGFzcyAqZG1hX2hlYXBfY2xhc3M7DQo+ICBzdGF0
aWMgREVGSU5FX1hBUlJBWV9BTExPQyhkbWFfaGVhcF9taW5vcnMpOw0KPg0KPiAraW50IGRtYV9o
ZWFwX2NyZWF0ZV9kZXZpY2VfbGluayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKmhl
YXApDQo+ICt7DQo+ICsgICAgICAgc3RydWN0IGRtYV9oZWFwICpoOw0KPiArDQo+ICsgICAgICAg
LyogY2hlY2sgdGhlIG5hbWUgaXMgdmFsaWQgKi8NCj4gKyAgICAgICBtdXRleF9sb2NrKCZoZWFw
X2xpc3RfbG9jayk7DQo+ICsgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeShoLCAmaGVhcF9saXN0
LCBsaXN0KSB7DQo+ICsgICAgICAgICAgICAgICBpZiAoIXN0cmNtcChoLT5uYW1lLCBoZWFwKSkN
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ICsgICAgICAgfQ0KPiArICAgICAg
IG11dGV4X3VubG9jaygmaGVhcF9saXN0X2xvY2spOw0KPiArDQo+ICsgICAgICAgaWYgKGxpc3Rf
ZW50cnlfaXNfaGVhZChoLCAmaGVhcF9saXN0LCBsaXN0KSkgew0KPiArICAgICAgICAgICAgICAg
cHJfZXJyKCJkbWFfaGVhcDogTGluayB0byBpbnZhbGlkIGhlYXAgcmVxdWVzdGVkICVzXG4iLCBo
ZWFwKTsNCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiArICAgICAgIH0NCj4g
Kw0KPiArICAgICAgIHJldHVybiBzeXNmc19jcmVhdGVfbGluaygmZGV2LT5rb2JqLCAmaC0+ZGV2
LT5rb2JqLCBERVZOQU1FKTsNCj4gK30NCg0KU28sIG9uZSBjb25jZXJuIHdpdGggdGhpcyAoaWYg
SSdtIHJlYWRpbmcgdGhpcyByaWdodCkgaXMgaXQgc2VlbXMgbGlrZQ0KYSBzaW5nbGUgaGVhcCBs
aW5rIG1heSBiZSBpbnN1ZmZpY2llbnQuDQoNClRoZXJlIG1heSBiZSBtdWx0aXBsZSBoZWFwcyB0
aGF0IGEgZHJpdmVyIGNvdWxkIHdvcmsgd2l0aCAoZXNwZWNpYWxseQ0KaWYgdGhlIGRldmljZSBp
c24ndCB2ZXJ5IGNvbnN0cmFpbmVkKSwgc28gd2hlbiBzaGFyaW5nIGEgYnVmZmVyIHdpdGggYQ0K
c2Vjb25kIGRldmljZSB0aGF0IGlzIG1vcmUgY29uc3RyYWluZWQgd2UnZCBoYXZlIHRoZSBzYW1l
IHByb2JsZW0gd2UNCmhhdmUgbm93IHdoZXJlIHVzZXJzcGFjZSBqdXN0IG5lZWRzIHRvIGtub3cg
d2hpY2ggZGV2aWNlIGlzIHRoZSBtb3JlDQpjb25zdHJhaW5lZCBvbmUgdG8gYWxsb2NhdGUgZm9y
Lg0KDQpTbyBpdCBtaWdodCBiZSB1c2VmdWwgdG8gaGF2ZSBhIHN5c2ZzICJkbWFfaGVhcHMiIGRp
cmVjdG9yeSB3aXRoIHRoZQ0Kc3VwcG9ydGVkIGhlYXBzIGxpbmtlZCBmcm9tIHRoZXJlPyBUaGF0
IHdheSB1c2VybGFuZCBjb3VsZCBmaW5kIGFjcm9zcw0KdGhlIHZhcmlvdXMgZGV2aWNlcyB0aGUg
aGVhcC1saW5rIHRoYXQgd2FzIGNvbW1vbi4NCg0KVGhpcyBzdGlsbCBoYXMgdGhlIGRvd25zaWRl
IHRoYXQgZXZlcnkgZHJpdmVyIG5lZWRzIHRvIGJlIGF3YXJlIG9mDQpldmVyeSBoZWFwLCBhbmQg
d2hlbiBuZXcgaGVhcHMgYXJlIGFkZGVkLCBpdCBtYXkgdGFrZSBhd2hpbGUgYmVmb3JlDQpmb2xr
cyBtaWdodCBiZSBhYmxlIHRvIGFzc2VzcyBpZiBhIGRldmljZSBpcyBjb21wYXRpYmxlIG9yIG5v
dCB0bw0KdXBkYXRlIGl0LCBzbyBJIHN1c3BlY3Qgd2UnbGwgaGF2ZSBldmVudHVhbGx5IHNvbWUg
bG9vc2UNCmNvbnN0cmFpbnQtYmFzZWQgaGVscGVycyB0byByZWdpc3RlciBsaW5rcy4gQnV0IEkg
dGhpbmsgdGhpcyBhdCBsZWFzdA0KbW92ZXMgdXMgaW4gYSB3b3JrYWJsZSBkaXJlY3Rpb24sIHNv
IGFnYWluLCBJJ20gcmVhbGx5IGdsYWQgdG8gc2VlIHlvdQ0Kc2VuZCB0aGlzIG91dCENCg0KdGhh
bmtzDQotam9obg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
