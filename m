Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 773A0AB1849
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 17:22:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FB8F460F7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 15:22:02 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id D2044460DB
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 15:21:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=G7TWVdLq;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso76675e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 May 2025 08:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746804108; x=1747408908; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PODw7ulR9PB7arm5tdpwF+f90XRe1aMGGhaLajPSDEc=;
        b=G7TWVdLqtp+j/glulYihgXo8VT/gLw1ocgKM/uvQbVpPtH5s8fQ20wMPN/kNrTG/zJ
         lbqNcfQ8BqFvGWC/x3fTHJ127i5Q9s4HquoXdQYYd510QQI3BH+K07JWM7jML3Rbv7q2
         gU7qkkdl15d/lVlrLQ1AOvnMKtymrrTaD4YJiBC2krsv7TdSzzVHgUhsUI5YFOZ/VOIl
         +0LNEuAtzalCsRA8O8gHNa0QQVtiK5FKQr6arlF140ycYjJdgnHLSbHKIbCGh8uTAGbp
         gF9RWtUZvzWT9JAsH0WYb4Xg/AJYIJk0x5BbJtxlNDmbcWUNkfdU5jSZe4HELCnqD7wd
         l74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746804108; x=1747408908;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PODw7ulR9PB7arm5tdpwF+f90XRe1aMGGhaLajPSDEc=;
        b=kaETFJtKTDcwIIqXprH/7he1yXG1jDjJtaYijsnaBjylkENUFL6ACXsLFs6C+Abi0o
         aow93Fw4agpLtUX7p77ydRoWe/OazjsXB3qtzf7qX6a/e2W7IGXD++yZOe4re65SVd5w
         8msr1QDqoeXQNa46GiLPnyF+GegVMnafQA/BBCkbwelVmW7zyKgKKL3nrFWKIPwLuBzL
         gfKXJgzOSxFqVZAK+tzw8usIXsnPl2SXM9bxpSdtYuKntrMxkGSovEYDGqKtGCHU9yW3
         uiGcvd94yLBKOjwcDFZ7P18nTm+vDpFjmDAJsC5dnJOFVHb+mYF9xK2GaohOA2FjggnQ
         Cs+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXEO5WuwAyJQH2KMnGrLurINv04oVUxZo03WIVeCav8xRIu9nqiSu0EzcUNjhfNJex12oMvJsj+LPbycO63@lists.linaro.org
X-Gm-Message-State: AOJu0Yx8+ph7kCnEC8Eta8hq6PuxV7C/xEhbUlf4XpBhQ4FPnUSechhg
	2CNt9jMRMswpGIduwN//RyYtncrFFk+7TV0uagP/Rfofg1AORh4oXrfr50RMLzgnQq20MjKP50Q
	dbnxyMqVxrSZiX7DfrAL2o1f+EDscg5UmfhFm
X-Gm-Gg: ASbGnct2a/i5/bO0BRXxL9VrUj573rMhhQYsONPA4BbJ92yHFZh1hIKdBH6/KumqO6z
	6Q567UdTgS+uaGi2Fe7EiCf2aSvu9r3b0048RYVGUJYCbXA4sPiJXUHq9bjS1xlA1R4CsiaI3Tz
	nhyKWg5QqCNiMtwEKM5ND4
X-Google-Smtp-Source: AGHT+IFxWr7UYH5UXN0HFUB2iPnwNf7bB78kgOChbtof0mjoiWXBuO/ayaFDhJMwRvTwWokPxNYOF8Jo1WiZoneiOiw=
X-Received: by 2002:a05:600c:4394:b0:43d:5b3a:18cc with SMTP id
 5b1f17b1804b1-442d6ed7d6amr1049915e9.2.1746804107643; Fri, 09 May 2025
 08:21:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com> <b1e53d0b-04ba-4ad7-abdf-2406283a9cfb@amd.com>
In-Reply-To: <b1e53d0b-04ba-4ad7-abdf-2406283a9cfb@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 9 May 2025 08:21:35 -0700
X-Gm-Features: AX0GCFvggZ1wxI53q8jeqfq4ZRzo6BIGXGFyIIxksh_oUSEqZ6C2et9zbwejpqA
Message-ID: <CABdmKX0FSPtF08sjr5dKTZXTPs9SqbHfXYKVGJ7sPk5vsRctDw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D2044460DB
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ZCRW3MV7F3N6W45Q6OL5RCUWD3KMLHSB
X-Message-ID-Hash: ZCRW3MV7F3N6W45Q6OL5RCUWD3KMLHSB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZCRW3MV7F3N6W45Q6OL5RCUWD3KMLHSB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgOCwgMjAyNSBhdCAxMTowNOKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBGZWVsIGZyZWUgdG8gYWRkIG15IEFj
a2VkLWJ5IHRvIHRoZSBwYXRjaGVzIHdoaWNoIGRvbid0IGhhdmUgbXkgcmIgeWV0Lg0KPg0KPiBB
bmQgcGluZyBtZSB3aGVuIEkgc2hvdWxkIHVwc3RyZWFtIHRoaXMgdGhyb3VnaCBkcm0tbWlzYy1u
ZXh0LCBidXQgaWYgeW91IHdhbnQgdG8gdXBzdHJlYW0gdGhpcyB0aHJvdWdoIHNvbWUgb3RoZXIg
YnJhbmNoIHRoZW4gdGhhdCBpcyBmaW5lIHdpdGggbWUgYXMgd2VsbC4NCg0KVGhhbmtzIENocmlz
dGlhbi4gQWxleGVpIG1lbnRpb25lZCBoZSB3YXMgd2lsbGluZyB0byB0YWtlIHRoZSBzZXJpZXMN
CnRocm91Z2ggYnBmLW5leHQgaGVyZToNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUFE
blZRTHF2LVpwb1FFaGsyVXd2U1pvclNMY2pnRjdxTEQ3Nm9IZ3VINS1HY1NYeEFAbWFpbC5nbWFp
bC5jb20vDQoNCkkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gc2VuZCB0aGUgQ09ORklHX0RNQUJV
Rl9TWVNGU19TVEFUUyByZW1vdmFsDQp0aHJvdWdoIGRybS1taXNjLW5leHQgdGhvdWdoLCBzbyBJ
J2xsIHJlc2VuZCB0aGF0IGFzIGEgc3RhbmRhbG9uZQ0KcGF0Y2ggd2hlbmV2ZXIgSSBoZWFyIGFi
b3V0IHRoZSBuZXh0IGxvbmd0ZXJtIHN0YWJsZSByZWxlYXNlLg0KDQo+DQo+IFJlZ2FyZHMsDQo+
IENocmlzdGlhbi4NCj4NCj4gT24gNS84LzI1IDIwOjIwLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+
ID4gVW50aWwgQ09ORklHX0RNQUJVRl9TWVNGU19TVEFUUyB3YXMgYWRkZWQgWzFdIGl0IHdhcyBv
bmx5IHBvc3NpYmxlIHRvDQo+ID4gcGVyZm9ybSBwZXItYnVmZmVyIGFjY291bnRpbmcgd2l0aCBk
ZWJ1Z2ZzIHdoaWNoIGlzIG5vdCBzdWl0YWJsZSBmb3INCj4gPiBwcm9kdWN0aW9uIGVudmlyb25t
ZW50cy4gRXZlbnR1YWxseSB3ZSBkaXNjb3ZlcmVkIHRoZSBvdmVyaGVhZCB3aXRoDQo+ID4gcGVy
LWJ1ZmZlciBzeXNmcyBmaWxlIGNyZWF0aW9uL3JlbW92YWwgd2FzIHNpZ25pZmljYW50bHkgaW1w
YWN0aW5nDQo+ID4gYWxsb2NhdGlvbiBhbmQgZnJlZSB0aW1lcywgYW5kIGV4YWNlcmJhdGVkIGtl
cm5mcyBsb2NrIGNvbnRlbnRpb24uIFsyXQ0KPiA+IGRtYV9idWZfc3RhdHNfc2V0dXAoKSBpcyBy
ZXNwb25zaWJsZSBmb3IgMzklIG9mIHNpbmdsZS1wYWdlIGJ1ZmZlcg0KPiA+IGNyZWF0aW9uIGR1
cmF0aW9uLCBvciA3NCUgb2Ygc2luZ2xlLXBhZ2UgZG1hX2J1Zl9leHBvcnQoKSBkdXJhdGlvbiB3
aGVuDQo+ID4gc3RyZXNzaW5nIGRtYWJ1ZiBhbGxvY2F0aW9ucyBhbmQgZnJlZXMuDQo+ID4NCj4g
PiBJIHByb3RvdHlwZWQgYSBjaGFuZ2UgZnJvbSBwZXItYnVmZmVyIHRvIHBlci1leHBvcnRlciBz
dGF0aXN0aWNzIHdpdGggYQ0KPiA+IFJDVSBwcm90ZWN0ZWQgbGlzdCBvZiBleHBvcnRlciBhbGxv
Y2F0aW9ucyB0aGF0IGFjY29tbW9kYXRlcyBtb3N0IChidXQNCj4gPiBub3QgYWxsKSBvZiBvdXIg
dXNlLWNhc2VzIGFuZCBhdm9pZHMgYWxtb3N0IGFsbCBvZiB0aGUgc3lzZnMgb3ZlcmhlYWQuDQo+
ID4gV2hpbGUgdGhhdCBhZGRzIGxlc3Mgb3ZlcmhlYWQgdGhhbiBwZXItYnVmZmVyIHN5c2ZzLCBh
bmQgbGVzcyBldmVuIHRoYW4NCj4gPiB0aGUgbWFpbnRlbmFuY2Ugb2YgdGhlIGRtYWJ1ZiBkZWJ1
Z2ZzX2xpc3QsIGl0J3Mgc3RpbGwgKmFkZGl0aW9uYWwqDQo+ID4gb3ZlcmhlYWQgb24gdG9wIG9m
IHRoZSBkZWJ1Z2ZzX2xpc3QgYW5kIGRvZXNuJ3QgZ2l2ZSB1cyBwZXItYnVmZmVyIGluZm8uDQo+
ID4NCj4gPiBUaGlzIHNlcmllcyB1c2VzIHRoZSBleGlzdGluZyBkbWFidWYgZGVidWdmc19saXN0
IHRvIGltcGxlbWVudCBhIEJQRg0KPiA+IGRtYWJ1ZiBpdGVyYXRvciwgd2hpY2ggYWRkcyBubyBv
dmVyaGVhZCB0byBidWZmZXIgYWxsb2NhdGlvbi9mcmVlIGFuZA0KPiA+IHByb3ZpZGVzIHBlci1i
dWZmZXIgaW5mby4gVGhlIGxpc3QgaGFzIGJlZW4gbW92ZWQgb3V0c2lkZSBvZg0KPiA+IENPTkZJ
R19ERUJVR19GUyBzY29wZSBzbyB0aGF0IGl0IGlzIGFsd2F5cyBwb3B1bGF0ZWQuIFRoZSBCUEYg
cHJvZ3JhbQ0KPiA+IGxvYWRlZCBieSB1c2Vyc3BhY2UgdGhhdCBleHRyYWN0cyBwZXItYnVmZmVy
IGluZm9ybWF0aW9uIGdldHMgdG8gZGVmaW5lDQo+ID4gaXRzIG93biBpbnRlcmZhY2Ugd2hpY2gg
YXZvaWRzIHRoZSBsYWNrIG9mIEFCSSBzdGFiaWxpdHkgd2l0aCBkZWJ1Z2ZzLg0KPiA+DQo+ID4g
VGhpcyB3aWxsIGFsbG93IHVzIHRvIHJlcGxhY2Ugb3VyIHVzZSBvZiBDT05GSUdfRE1BQlVGX1NZ
U0ZTX1NUQVRTLCBhbmQNCj4gPiB0aGUgcGxhbiBpcyB0byByZW1vdmUgaXQgZnJvbSB0aGUga2Vy
bmVsIGFmdGVyIHRoZSBuZXh0IGxvbmd0ZXJtIHN0YWJsZQ0KPiA+IHJlbGVhc2UuDQo+ID4NCj4g
PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAyMDEyMTAwNDQ0MDAu
MTA4MDMwOC0xLWhyaWR5YUBnb29nbGUuY29tDQo+ID4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDIyMDUxNjE3MTMxNS4yNDAwNTc4LTEtdGptZXJjaWVyQGdvb2dsZS5jb20NCj4g
Pg0KPiA+IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA0MTQyMjUyMjcuMzY0
MjYxOC0xLXRqbWVyY2llckBnb29nbGUuY29tDQo+ID4gdjEgLT4gdjI6DQo+ID4gTWFrZSB0aGUg
RE1BIGJ1ZmZlciBsaXN0IGluZGVwZW5kZW50IG9mIENPTkZJR19ERUJVR19GUyBwZXIgQ2hyaXN0
aWFuIEvDtm5pZw0KPiA+IEFkZCBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIgY2hlY2sgdG8ga2Vy
bmVsL2JwZi9NYWtlZmlsZSBwZXIga2VybmVsIHRlc3Qgcm9ib3QNCj4gPiBVc2UgQlRGX0lEX0xJ
U1RfU0lOR0xFIGluc3RlYWQgb2YgQlRGX0lEX0xJU1RfR0xPQkFMX1NJTkdMRSBwZXIgU29uZyBM
aXUNCj4gPiBGaXh1cCBjb21tZW50IHN0eWxlLCBtaXhpbmcgY29kZS9kZWNsYXJhdGlvbnMsIGFu
ZCB1c2UgQVNTRVJUX09LX0ZEIGluIHNlbGZ0ZXN0IHBlciBTb25nIExpdQ0KPiA+IEFkZCBCUEZf
SVRFUl9SRVNDSEVEIGZlYXR1cmUgdG8gYnBmX2RtYWJ1Zl9yZWdfaW5mbyBwZXIgQWxleGVpIFN0
YXJvdm9pdG92DQo+ID4gQWRkIG9wZW4tY29kZWQgaXRlcmF0b3IgYW5kIHNlbGZ0ZXN0IHBlciBB
bGV4ZWkgU3Rhcm92b2l0b3YNCj4gPiBBZGQgYSBzZWNvbmQgdGVzdCBidWZmZXIgZnJvbSB0aGUg
c3lzdGVtIGRtYWJ1ZiBoZWFwIHRvIHNlbGZ0ZXN0cw0KPiA+IFVzZSB0aGUgQlBGIHByb2dyYW0g
d2UnbGwgdXNlIGluIHByb2R1Y3Rpb24gZm9yIHNlbGZ0ZXN0IHBlciBBbGV4ZWkgU3Rhcm92b2l0
b3YNCj4gPiAgIGh0dHBzOi8vci5hbmRyb2lkLmNvbS9jL3BsYXRmb3JtL3N5c3RlbS9icGZwcm9n
cy8rLzM2MTYxMjMvMi9kbWFidWZJdGVyLmMNCj4gPiAgIGh0dHBzOi8vci5hbmRyb2lkLmNvbS9j
L3BsYXRmb3JtL3N5c3RlbS9tZW1vcnkvbGlibWVtaW5mby8rLzM2MTQyNTkvMS9saWJkbWFidWZp
bmZvL2RtYWJ1Zl9icGZfc3RhdHMuY3BwDQo+ID4gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI1MDUwNDIyNDE0OS4xMDMzODY3LTEtdGptZXJjaWVyQGdvb2dsZS5jb20NCj4gPiB2
MiAtPiB2MzoNCj4gPiBSZWJhc2Ugb250byBicGYtbmV4dC9tYXN0ZXINCj4gPiBNb3ZlIGdldF9u
ZXh0X2RtYWJ1ZigpIGludG8gZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYywgYWxvbmcgd2l0aCB0
aGUNCj4gPiAgIG5ldyBnZXRfZmlyc3RfZG1hYnVmKCkuIFRoaXMgYXZvaWRzIGhhdmluZyB0byBl
eHBvc2UgdGhlIGRtYWJ1ZiBsaXN0DQo+ID4gICBhbmQgbXV0ZXggdG8gdGhlIHJlc3Qgb2YgdGhl
IGtlcm5lbCwgYW5kIGtlZXBzIHRoZSBkbWFidWYgbXV0ZXgNCj4gPiAgIG9wZXJhdGlvbnMgbmVh
ciBlYWNoIG90aGVyIGluIHRoZSBzYW1lIGZpbGUuIChDaHJpc3RpYW4gS8O2bmlnKQ0KPiA+IEFk
ZCBDaHJpc3RpYW4ncyBSQiB0byBkbWEtYnVmOiBSZW5hbWUgZGVidWdmcyBzeW1ib2xzDQo+ID4g
RHJvcCBSRkM6IGRtYS1idWY6IFJlbW92ZSBETUEtQlVGIHN0YXRpc3RpY3MNCj4gPiB2MzogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTA3MDAxMDM2LjIyNzg3ODEtMS10am1lcmNp
ZXJAZ29vZ2xlLmNvbQ0KPiA+IHYzIC0+IHY0Og0KPiA+IEZpeCBzZWxmdGVzdCBCUEYgcHJvZ3Jh
bSBjb21tZW50IHN0eWxlIChub3Qga2RvYykgcGVyIEFsZXhlaSBTdGFyb3ZvaXRvdg0KPiA+IEZp
eCBkbWEtYnVmLmMga2RvYyBjb21tZW50IHN0eWxlIHBlciBBbGV4ZWkgU3Rhcm92b2l0b3YNCj4g
PiBSZW5hbWUgZ2V0X2ZpcnN0X2RtYWJ1ZiAvIGdldF9uZXh0X2RtYWJ1ZiB0byBkbWFfYnVmX2l0
ZXJfYmVnaW4gLw0KPiA+ICAgZG1hX2J1Zl9pdGVyX25leHQgcGVyIENocmlzdGlhbiBLw7ZuaWcN
Cj4gPiBBZGQgQ2hyaXN0aWFuJ3MgUkIgdG8gYnBmOiBBZGQgZG1hYnVmIGl0ZXJhdG9yDQo+ID4N
Cj4gPiBULkouIE1lcmNpZXIgKDUpOg0KPiA+ICAgZG1hLWJ1ZjogUmVuYW1lIGRlYnVnZnMgc3lt
Ym9scw0KPiA+ICAgYnBmOiBBZGQgZG1hYnVmIGl0ZXJhdG9yDQo+ID4gICBicGY6IEFkZCBvcGVu
IGNvZGVkIGRtYWJ1ZiBpdGVyYXRvcg0KPiA+ICAgc2VsZnRlc3RzL2JwZjogQWRkIHRlc3QgZm9y
IGRtYWJ1Zl9pdGVyDQo+ID4gICBzZWxmdGVzdHMvYnBmOiBBZGQgdGVzdCBmb3Igb3BlbiBjb2Rl
ZCBkbWFidWZfaXRlcg0KPiA+DQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAg
ICAgICAgICAgICAgICB8ICA5OCArKysrKy0tDQo+ID4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgNCArLQ0KPiA+ICBrZXJuZWwvYnBmL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKw0KPiA+ICBrZXJuZWwvYnBmL2RtYWJ1
Zl9pdGVyLmMgICAgICAgICAgICAgICAgICAgICAgfCAxNDkgKysrKysrKysrKw0KPiA+ICBrZXJu
ZWwvYnBmL2hlbHBlcnMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKw0KPiA+ICAu
Li4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmltZW50YWwuaCAgfCAgIDUgKw0KPiA+
ICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvY29uZmlnICAgICAgICAgICAgfCAgIDMgKw0K
PiA+ICAuLi4vc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMgICAgfCAyNTgg
KysrKysrKysrKysrKysrKysrDQo+ID4gIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3Mv
ZG1hYnVmX2l0ZXIuYyB8ICA5MSArKysrKysNCj4gPiAgOSBmaWxlcyBjaGFuZ2VkLCA1OTQgaW5z
ZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBrZXJu
ZWwvYnBmL2RtYWJ1Zl9pdGVyLmMNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMNCj4gPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5j
DQo+ID4NCj4gPg0KPiA+IGJhc2UtY29tbWl0OiA0Mzc0NWQxMWJmZDk2ODNhYmRmMDhhZDdhNWNj
NDAzZDZhOWZmZDE1DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
