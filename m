Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABgAKX0eDGqoWgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:25:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2946B579F83
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:25:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B213F4096A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 08:25:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 92B553F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 08:25:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=XSeEuK8H;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779179122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zmlcsxs7JMP5bdHZ5kThghYTTdo51TjoA70ut3zJssU=;
	b=XSeEuK8HhLnqAehTPjnPbJXtjiAhAQjl05LpHXwKxBsTFS/6Pk5HZn/lKE4HTVxBmODFnH
	eimlojeysh9zo2NOw9SetmuwyvhqDbeZCYC4BfpJLyGDeUTLGvOUsnEvGowuxcFb1l7VPh
	EQnnd59yVXCa41wY257j8AcLwWHY50Y=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-423-fw2bdlMNMoq7sV6TXKpVTw-1; Tue, 19 May 2026 04:25:20 -0400
X-MC-Unique: fw2bdlMNMoq7sV6TXKpVTw-1
X-Mimecast-MFC-AGG-ID: fw2bdlMNMoq7sV6TXKpVTw_1779179119
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7bd5c9e2e4aso8128477b3.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 01:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779179119; x=1779783919;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zmlcsxs7JMP5bdHZ5kThghYTTdo51TjoA70ut3zJssU=;
        b=DVfc5nCYx6Anr7Q3FhYnXJqZGAtZoBOEhLurL57altw86DsTwGlL1UCwgRwwQ1PPbe
         tLJJGTjrBpIdR8LFsjiPKq098it4isNOHDgUm7H63Gtzogi6ej0GKcNNiCes56lW3gGQ
         VbOor/GrtYfWokwJB22GEctIe3r733MB//RgKIpRtXxU9d1AjqGM9EUdEmUE2uOXlXr8
         5ADXhC+anpvrD27qhr7x6RCONRGaaz6jE9PDAzEI2CghLzXq+b9nB7/jsX3CCqTOtv5P
         G3qtixPsBIJiAsEYJZ7Yjh1+cDrF6us5sqixEVSe4kHlC7/90GDxle4LrREgvTxM7vST
         O14Q==
X-Forwarded-Encrypted: i=1; AFNElJ9DLRV3d5S+m1zfnGABXfEFdVg2u1Tcv07CAs8ZTFECtPkBCKgRcnWBaUyTGHOe0O0LJKzVOeC7cIwqANsf@lists.linaro.org
X-Gm-Message-State: AOJu0YxXVZLL2Z0RhT9y62ed+ewLSbYk2sbQR5LcuBbZzAackJ7tSauC
	iNGe9+fq2c74qqhtr7p2/AnjPBnNre3wAej1rsLC9Z6m1O68oSSGSlLgpPsJoq5VLX7N9MgExWB
	b/i8H5/uLQdhdqA2VkU2DoOX2oK/fgS7WNwsSioemPywnM5POMc+mtMNqVh6Utwz4+0Oe1CLFtr
	BNrB0UR/9zpRVs/iTWCQE4IWgEuDH2KLUpJiCJlN2YUps=
X-Gm-Gg: Acq92OEYn4CMywkdmJQrb8EUuOgkQhCaND0tdGQ73Zq8eW7lkzMFFI0fzPr+61mQF8U
	8TJNAwlfsKMwRN2uZw+yrxbPb/LkEP0fFUUkYFhEDGUvlQvtS8IdwSVGNdN7Ztvx9JmfeJsjmVW
	b8mlabgU7cbIdwb3k68vrjHgOy5EMtjkMGSJOy9tWMLJAObNhVZTiMZyM08DVKbRhTd9I1Stpgy
	EtUhw==
X-Received: by 2002:a05:690c:e041:b0:7b3:edc7:9bb8 with SMTP id 00721157ae682-7c955b970femr172556897b3.0.1779179119380;
        Tue, 19 May 2026 01:25:19 -0700 (PDT)
X-Received: by 2002:a05:690c:e041:b0:7b3:edc7:9bb8 with SMTP id
 00721157ae682-7c955b970femr172556607b3.0.1779179118837; Tue, 19 May 2026
 01:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <20260515-hinschauen-effizient-9e3a05a94f2e@brauner> <CABdmKX0d6Zsg+_TxXjB80UZR23ZvXzxYoWzORgwmx=ZiuE+Nzw@mail.gmail.com>
 <208fb820-d8eb-4832-a343-ef8b360e8120@amd.com> <CADSE00Lh95ygoXGKJGsYvQGEsFV8sVmwEC3uvh8M6r3ERzaJwg@mail.gmail.com>
 <88efe10a-8b93-4a81-8279-4a5559d0f17c@amd.com> <CABdmKX3yZubjDKbVqwrjHAiKyj_ioHzOoxd0wzFbJK=PAGOqcQ@mail.gmail.com>
 <01b6eefc-c107-4f8c-9d7c-3b86f54cabaa@amd.com>
In-Reply-To: <01b6eefc-c107-4f8c-9d7c-3b86f54cabaa@amd.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 19 May 2026 10:25:07 +0200
X-Gm-Features: AVHnY4K5LncaNoVhZCnb-g1Oej_4CFtS9sUy70LBQyTJDD76MUlJZifB3Hgf-cg
Message-ID: <CADSE00KCpCHOu2GMJ++ozXXbwF13fd2ZfmC3CnZBdLM_0p+ZMg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: swclFxyulDAmH7U3PTfK270qi8t7OC0-u2128uZGWFc_1779179119
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: QCTQUKKQ63QAIZ5XD4A3JJQIJ6NJJ2TN
X-Message-ID-Hash: QCTQUKKQ63QAIZ5XD4A3JJQIJ6NJJ2TN
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: "T.J. Mercier" <tjmercier@google.com>, Christian Brauner <brauner@kernel.org>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedeskto
 p.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QCTQUKKQ63QAIZ5XD4A3JJQIJ6NJJ2TN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,lists.freedeskto,lists.linaro.org,kvack.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 2946B579F83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgOToyMOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE5LzI2IDAxOjM5LCBULkou
IE1lcmNpZXIgd3JvdGU6DQo+ID4gT24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgNzowN+KAr0FNIENo
cmlzdGlhbiBLw7ZuaWcNCj4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4g
Pj4NCj4gPj4gT24gNS8xOC8yNiAxNDo1MCwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4gPj4+IE9u
IE1vbiwgTWF5IDE4LCAyMDI2IGF0IDk6MjDigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+ID4+PiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4+Pg0KPiA+Pj4+IE9uIDUvMTUv
MjYgMTk6MDYsIFQuSi4gTWVyY2llciB3cm90ZToNCj4gPj4+Pj4gT24gRnJpLCBNYXkgMTUsIDIw
MjYgYXQgNjo1M+KAr0FNIENocmlzdGlhbiBCcmF1bmVyIDxicmF1bmVyQGtlcm5lbC5vcmc+IHdy
b3RlOg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2IGF0IDExOjEwOjQ0
QU0gKzAyMDAsIEFsYmVydCBFc3RldmUgd3JvdGU6DQo+ID4+Pj4+Pj4gT24gZW1iZWRkZWQgcGxh
dGZvcm1zIGEgY2VudHJhbCBwcm9jZXNzIG9mdGVuIGFsbG9jYXRlcyBkbWEtYnVmDQo+ID4+Pj4+
Pj4gbWVtb3J5IG9uIGJlaGFsZiBvZiBjbGllbnQgYXBwbGljYXRpb25zLiBXaXRob3V0IGEgd2F5
IHRvDQo+ID4+Pj4+Pj4gYXR0cmlidXRlIHRoZSBjaGFyZ2UgdG8gdGhlIHJlcXVlc3RpbmcgY2xp
ZW50J3MgY2dyb3VwLCB0aGUNCj4gPj4+Pj4+PiBjb3N0IGxhbmRzIG9uIHRoZSBhbGxvY2F0b3Is
IG1ha2luZyBwZXItY2dyb3VwIG1lbW9yeSBsaW1pdHMNCj4gPj4+Pj4+PiBpbmVmZmVjdGl2ZSBm
b3IgdGhlIGFjdHVhbCBjb25zdW1lcnMuDQo+ID4+Pj4+Pj4NCj4gPj4+Pj4+PiBBZGQgY2hhcmdl
X3BpZF9mZCB0byBzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhLiBXaGVuIHNldCB0bw0K
PiA+Pj4+Pj4NCj4gPj4+Pj4+IFBsZWFzZSBiZSBhd2FyZSB0aGF0IHBpZGZkcyBjb21lIGluIHR3
byBmbGF2b3JzOg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IHRocmVhZC1ncm91cCBwaWRmZHMgYW5kIHRo
cmVhZC1zcGVjaWZpYyBwaWRmZHMuIE1ha2Ugc3VyZSB0aGF0IHlvdXIgQVBJDQo+ID4+Pj4+PiBk
b2Vzbid0IGltcGxpY2l0bHkgZGVwZW5kIG9uIHRoaXMgZGlzdGluY3Rpb24gbm90IGV4aXN0aW5n
Lg0KPiA+Pj4+Pg0KPiA+Pj4+PiBIaSBDaHJpc3RpYW4sDQo+ID4+Pj4+DQo+ID4+Pj4+IE1lbWNn
IGlzIG5vdCBhIGNvbnRyb2xsZXIgdGhhdCBzdXBwb3J0cyAidGhyZWFkIG1vZGUiIHNvIGFsbCB0
aHJlYWRzDQo+ID4+Pj4+IGluIGEgZ3JvdXAgc2hvdWxkIGJlbG9uZyB0byB0aGUgc2FtZSBtZW1j
Zy4NCj4gPj4+Pg0KPiA+Pj4+IEJUVzogRXhhY3RseSB0aGF0IGlzIHRoZSByZXF1aXJlbWVudCBh
dXRvbW90aXZlIGhhcyB3aXRoIHRoZWlyIG5hdGl2ZSBjb250ZXh0IHVzZSBjYXNlLg0KPiA+Pj4+
DQo+ID4+Pj4gVGhlIHVzZSBjYXNlIGlzIHRoYXQgeW91IGhhdmUgYSBkZWFtb24gd2hpY2ggaGFz
IG11bHRpcGxlIHRocmVhZHMgd2VyZSBlYWNoIG9uZSBpcyBhY3Rpbmcgb24gYmVoYWx2ZSBvZiBz
b21lIG90aGVyIHByb2Nlc3MuDQo+ID4+Pj4NCj4gPj4+PiBBdCB0aGUgbW9tZW50IHdlIGJhc2lj
YWxseSBzYXkgdGhleSBhcmUgc2ltcGx5IG5vdCB1c2luZyBjZ3JvdXBzIGZvciB0aGF0IHVzZSBj
YXNlLCBidXQgaXQgd291bGQgYmUgcmVhbGx5IG5pY2UgaWYgd2UgY291bGQgaGFuZGxlIHRoYXQg
YXMgd2VsbC4NCj4gPj4+Pg0KPiA+Pj4+IFN1bW1hcml6aW5nIHRoZSByZXF1aXJlbWVudCBvZiB0
aGF0IHVzZSBjYXNlOiBZb3UgbmVlZCBhIGRpZmZlcmVudCBjZ3JvdXAgZm9yIGVhY2ggdGhyZWFk
IG9mIGEgcHJvY2Vzcy4NCj4gPj4+DQo+ID4+PiBIaSBDaHJpc3RpYW4sDQo+ID4+Pg0KPiA+Pj4g
VGhhbmtzIGZvciBzaGFyaW5nIHRoaXMgYXR1b21vdGl2ZSB1c2VjYXNlLiBJZiBJIHVuZGVyc3Rh
bmQgY29ycmVjdGx5LA0KPiA+Pj4gdGhlIGFjdHVhbCByZXF1aXJlbWVudCBpcyBhdHRyaWJ1dGlu
ZyBkbWEtYnVmIGNoYXJnZXMgdG8gdGhlIHJpZ2h0DQo+ID4+PiBjbGllbnQsIG5vdCBwdXR0aW5n
IGVhY2ggZGFlbW9uIHRocmVhZCBpbiBhIGRpZmZlcmVudCBjZ3JvdXA/DQo+ID4+DQo+ID4+IE5v
cGUsIGV4YWN0bHkgdGhhdCdzIHRoZSBkaWZmZXJlbmNlLg0KPiA+Pg0KPiA+PiBUaGUgdGhyZWFk
IGFjdHMgYXMgYSBmaWx0ZXJpbmcgYWdlbnQgZm9yIGJvdGggbWVtb3J5IGFsbG9jYXRpb24gYW5k
IGNvbW1hbmQgc3VibWlzc2lvbiBmb3Igc29tZWJvZHkgZWxzZSwgdGhlIHByb2Nlc3Mgb24gd2hp
Y2ggYmVoYWx2ZSB0aGUgZGFlbW9uIGRvZXMgdGhpbmdzIGNhbiBldmVuIGJlIGluIGEgY2xpZW50
IFZNLCBjb21wbGV0ZWx5IHJlbW90ZSBvdmVyIHNvbWUgbmV0d29yayBvciBldmVuIHNvbWV0aGlu
ZyBsaWtlIGEgbWljcm9jb250cm9sbGVyLg0KPiA+Pg0KPiA+PiBFdmVyeXRoaW5nIHRoZSB0aHJl
YWQgZG9lcyByZWdhcmRpbmcgQ1BVIHRpbWUsIEdQVSBkcml2ZXIgbWVtb3J5IGFsbG9jYXRpb24g
YXMgd2VsbCBhcyByZXNvdXJjZXMgbGlrZSBHUFUgcHJvY2Vzc2luZyBhbmQgSS9PIHRpbWUgZXRj
Li4gbmVlZHMgdG8gYmUgYWNjb3VudGVkIHRvIG9uZSBjbGllbnQgd2hpY2ggY2FuIGJlIGRpZmZl
cmVudCBmb3IgZWFjaCB0aHJlYWQgb2YgdGhlIHByb2Nlc3MuDQo+ID4+DQo+ID4+IFRoZSBvbmx5
IHRoaW5nIHdoaWNoIGlzIHNoYXJlZCB3aXRoIHRoZSBtYWluIHByb2Nlc3MgdGhyZWFkIGlzIENQ
VSBtZW1vcnkgcmVzb3VyY2VzLCBlLmcuIG1hbGxvYygpIGJlY2F1c2UgdGhhdCBpcyBiYXNpY2Fs
bHkganVzdCBuZWVkZWQgZm9yIGhvdXNla2VlcGluZyBhbmQgcHJldHR5IG11Y2ggaXJyZWxldmFu
dCBmb3IgdGhpcyBraW5kIG9mIHVzZSBjYXNlLg0KPiA+Pg0KPiA+PiBUaGUgcHJvYmxlbSBpcyBu
b3cgeW91IGNhbid0IGRvIHRoYXQgd2l0aCBjZ3JvdXBzIGF0IHRoZSBtb21lbnQgYnV0IHVuZm9y
dHVuYXRlbHkgb25seSB0aGUga2VybmVsIGhhcyB0aGUgaW5mb3JtYXRpb24geW91IG5lZWQgdG8g
a25vdyB0byBkbyB0aGlzLg0KPiA+Pg0KPiA+PiBTbyB3aGF0IHlvdSBlbmQgdXAgd2l0aCBpcyB0
byBkZWZpbmUgdG9ucyBvZiBpbnRlcmZhY2VzIGp1c3QgdG8gZ2V0IHRoZSBuZWNlc3NhcnkgaW5m
b3JtYXRpb24gZnJvbSB0aGUga2VybmVsIGludG8gdXNlcnNwYWNlIGFuZCB0aGVuIGVzc2VudGlh
bGx5IGR1cGxpY2F0ZSB0aGUgc2FtZSBpbmZyYXN0cnVjdHVyZSBjZ3JvdXAgcHJvdmlkZXMgaW4g
dGhlIGtlcm5lbCBpbiB1c2Vyc3BhY2UgYWdhaW4uDQo+ID4+DQo+ID4+PiBJZiBzbywNCj4gPj4+
IHRoZSBgY2hhcmdlX3BpZF9mZGAgYXBwcm9hY2ggYWNoaWV2ZXMgdGhpcyBkaXJlY3RseSBieSBw
YXNzaW5nIHRoZQ0KPiA+Pj4gY2xpZW50J3MgYHBpZF9mZGAsIHdpdGhvdXQgbmVlZGluZyB0byBh
ZGQgcGVyLXRocmVhZCBjZ3JvdXANCj4gPj4+IGluZnJhc3RydWN0dXJlLg0KPiA+Pg0KPiA+PiBX
ZWxsIGl0J3MgYWxyZWFkeSBhIG1hc3NpdmUgaW1wcm92ZW10LCB3ZSBjb3VsZCBiYXNpY2FsbHkg
c3RvcCBkb2luZyB0aGUgd2hvbGUgZHVwbGljYXRpb24gcGFydCBmb3IgdGhlIEdQVSBkcml2ZXIg
c3RhY2sgYW5kIGp1c3QgdXNlIGNncm91cHMgZm9yIHRoaXMgcGFydC4NCj4gPj4NCj4gPj4gRG9p
bmcgdGhhdCBhdXRvbWF0aWNhbGx5IGZvciBDUFUgYW5kIEkvTyB0aW1lIHdvdWxkIGp1c3QgYmUg
bmljZSB0byBoYXZlIGFkZGl0aW9uYWxseS4NCj4gPj4NCj4gPj4gUmVnYXJkcywNCj4gPj4gQ2hy
aXN0aWFuLg0KPiA+DQo+ID4gSG9wZWZ1bGx5IEknbSBmb2xsb3dpbmcgY29ycmVjdGx5IGhlcmUu
Li4uIFNvIHlvdSBhcmUgZHVwbGljYXRpbmcgdGhlDQo+ID4gR1BVIGRyaXZlciBzdGFjayB0byBh
Y2hpZXZlIHJlbW90ZSBhY2NvdW50aW5nIG9uIGEgcGVyLXRocmVhZCBiYXNpcz8NCj4NCj4gTm90
IHF1aXRlLCB3ZSBhcmUgZHVwbGljYXRpbmcgdGhlIGhhbmRsaW5nIGNncm91cCBwcm92aWRlcyBp
biB0aGUga2VybmVsIGluIHVzZXJzcGFjZS4NCj4NCj4gRm9yIHRoaXMgbWVtb3J5IHVzYWdlIGlu
Zm9ybWF0aW9uIGFzIHdlbGwgYXMgZXhlY3V0aW9uIHRpbWVzIG9mIHRoZSBHUFUga2VybmVsIGRy
aXZlciBpcyBleHBvc2VkIGluIGZkaW5mbyBmb3IgZXhhbXBsZS4NCj4NCj4gPiBEb2VzIHRoaXMg
bWVhbiBmb3IgR1BVIGFsbG9jYXRpb25zIHlvdSBjdXJyZW50bHkgaGF2ZSBzb21lIEdGUF9BQ0NP
VU5UDQo+ID4gbWFnaWMgaW4geW91ciBkcml2ZXIgdG8gYXR0cmlidXRlIEdQVSBtZW1vcnkgdG8g
dGhlIGNvcnJlY3QgcmVtb3RlDQo+ID4gY2xpZW50Pw0KPg0KPiBObywgd2UganVzdCBleHBvc2Ug
d2hhdCB0aGUga2VybmVsIGRyaXZlciBoYXMgYWxsb2NhdGVkIGZvciBpdHNlbGYuIEUuZy4gcGFn
ZSB0YWJsZXMsIGJ1ZmZlcnMgZXRjLi4uDQo+DQo+IFdoZW4gdXNlcnNwYWNlIGFsbG9jYXRlcyBz
b21ldGhpbmcgdXNpbmcgbWVtZmRfY3JlYXRlKCkgZm9yIGV4YW1wbGUgd2UganVzdCBpZ25vcmUg
dGhhdC4NCg0KDQo+DQo+ID4gU28gdGhpcyBzZXJpZXMgd291bGQgY2xvc2UgdGhlIGdhcCBmb3Ig
ZG1hLWJ1ZiBhbGxvY2F0aW9ucywNCj4gPiBidXQgd2hhdCBhYm91dCBwcml2YXRlIEdQVSBkcml2
ZXIgbWVtb3J5IGFsbG9jYXRlZCBvbiBiZWhhbGYgb2YgYQ0KPiA+IGNsaWVudD8NCj4NCj4gV2Vs
bCB3ZSB3b3VsZCBuZWVkIGEgY2dyb3VwIHdoaWNoIGlzbid0IGFzc29jaWF0ZWQgd2l0aCBhbnkg
cHJvY2VzcyB3ZXJlIHdlIGNvdWxkIGNoYXJnZSB0aGUgR1BVIGRyaXZlciBhbGxvY2F0aW9ucyBh
Z2FpbnN0Lg0KDQpJIHRoaW5rIEkgYmV0dGVyIHVuZGVyc3RhbmQgeW91ciBmcmFtaW5nIGZvciB0
aGlzIG5vdy4gVGhhbmtzIGFnYWluDQpmb3IgdGFraW5nIHRoZSB0aW1lIHRvIGV4cGxhaW4uDQoN
Ckkgd2FzIGxvb2tpbmcgZm9yIGEgd2F5IHRvIHBhc3MgY2dyb3VwIGFyb3VuZCB0byBkbyB0aGUg
Y2hhcmdlLiBJDQpmb3VuZCB0aGF0IGBzdHJ1Y3QgY2dyb3VwICpjZ3JvdXBfZ2V0X2Zyb21fZmQo
aW50IGZkKWAgYWxyZWFkeSBleGlzdHMNCmluIGNncm91cHMgYXZhaWxhYmxlIHN5bWJvbHMgdG8g
aGFuZGxlIGNncm91cCBkaXJlY3Rvcmllcy4NCg0KU28gaGVyZSdzIGFuIGlkZWEuLi4NCg0KUmVu
YW1lIHRoZSBjaGFyZ2VfcGlkX2ZkIHRvIGNoYXJnZV9mZDoNCi0gSWYgaXQgaXMgYSBwaWRmZCAo
YCFJU19FUlIocGlkZmRfcGlkKGZnZXQoY2hhcmdlX2ZkKSkpYCkgdGhlbiB3ZSBkbw0Kd2hhdCB3
ZSdyZSBhbHJlYWR5IGRvaW5nIGhlcmUuDQotIElmIGl0IGlzIGEgY2dyb3VwX2ZkIChgIUlTX0VS
UihjZ3JvdXBfZ2V0X2Zyb21fZmQoY2hhcmdlX2ZkKSlgKSB0aGVuDQp3ZSBjaGFyZ2UgdG8gdGhh
dCBjZ3JvdXAuDQoNCkFsc28gd2UgY291bGQgYWRkIGFkZCBhbiBpb2N0bCBmb3IgdGhlIGdlbmVy
aWMgZmQgcGF0aCBzaW1pbGFyIHRvIHdoYXQNCndlIGhhdmUgZm9yIGRtYS1idWYgaGVhcHMuIE9y
IGhhdmUgYSBuZXcgZmxhdm91ciBmb3IgbWVtZmRfY3JlYXRlOg0KYGBgDQptZW1mZF9jcmVhdGUy
KG5hbWUsIGZsYWdzLCBjaGFyZ2VfZmQpOw0KYGBgDQoNClRoZSB0cmFuc2ZlciBpb2N0bCBjb3Vs
ZCBhbHNvIGJlIG1hZGUgZ2VuZXJpYyB0byBhY2NlcHQgYm90aCBwaWRmZHMNCmFuZCBjZ3JvdXBf
ZmRzLg0KDQpGb3IgdGhpcyBzZXJpZXMgd2UgY291bGQgbW92ZSBmb3J3YXJkIGFzIGlzLCBhbmQg
bWFrZSB0aGUgZ2VuZXJpYw0Kc29sdXRpb24gYSBmb2xsb3ctdXAgc2VyaWVzLCBrbm93aW5nIHRo
YXQgdGhlIGZpZWxkIGNhbiBiZSByZXVzZWQgZm9yDQpjZ3JvdXAgZmRzLg0KDQo+DQo+IEJ1dCBn
b29kIHBvaW50LCBjaGFyZ2luZyBhZ2FpbnN0IGEgcGlkIHdvdWxkbid0IHdvcmsgaW4gdGhpcyB1
c2UgY2FzZS4NCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
