Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C9DAB0280
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 20:20:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B388044A5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 18:20:51 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id B585043B97
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 18:20:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Qpouc3tY;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 39fUcaAkKDZwPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=39fUcaAkKDZwPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-306b51e30ffso1252626a91.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 May 2025 11:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746728438; x=1747333238; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P9TcbK/nWa/YXXDAxnZVOVArGjAtkdTEqGETT2oQJ+Q=;
        b=Qpouc3tYjUPe9fEunJry/3C3Jr5CSL+CVq+p0fs9LZFUGMMyy9zgSuVMImJszO4223
         3olqCk78/dgiWm1IVUNdl8PM4287MLvu2InxUG5noFwpEP/xQsCm+dhrYd95FJuSrE0G
         QniYwb9+VhDnl5jSSSbt/M9AKknuVJDArR/QRCdz07PAAShOx0/vuMvsvzmzNuygl4B+
         1a+77z37hmEQk5EvGBu6feyiBoBVG2dXB0m/f7UJ7wvdKWEsbaYUdjXDnVPPSv0yfKS9
         Y6WU0XNTZ2O7XM1sWW5424PpKYlV++bDWBo7OSrd+6o0XACGwy/DgpL49xZsmSroLLXy
         hIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746728438; x=1747333238;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9TcbK/nWa/YXXDAxnZVOVArGjAtkdTEqGETT2oQJ+Q=;
        b=HAatK7V4np7OxV2HCXp1+5fhDunY6KdR83VaZb2ppFxEze+NhP3WIUS250mgs7CNnH
         eo4/73MMdHzuo2Jl0vabykP0WwONy80Clc3hOMmn1ARea7sWwWsASk2mfeH9OTEnwO0+
         fuM4+C1kbtlQIIlNTwjDp5bS775SpIKnGYii/PdhFQJt3CQ6GrX87Zjc7jjBx6y9iGvf
         mDhM239cP37UK+f+g9gxZXmWQVIhubSLU1vzQx5lkAB8+7YrOCcKakA/gQUdu06dcLZ8
         9Itip3vRH6kLJL8jLS9mkTEaSKlAzFG99OhETLY6+EiDRopDmibfK+CLALFidwdssNnf
         GEpQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6es/gwumXqDnC307JPYXB74NZGONr3yQPhITqcYKSGSkZaQ+KFcSyJGfLQ7FNGCIoD/K61HT8MMaE11VG@lists.linaro.org
X-Gm-Message-State: AOJu0Yy0eWYtatv2FmYFND8ifK3AdPC67zlAGJGois+OAhesIg11EMUB
	UjGlTs5torh0KNfB5/0/ycVnRHvETaQoLu1a0CDHhm+xwXvA4pFFk0s5T/d583lhKjWLeOuJfGd
	Zj+5vcvpj0Te4FQ==
X-Google-Smtp-Source: AGHT+IFhx3d+8kkrdtF5uHVOpa/4HuyLlmn9NJKawhhnSvvJ/pAtFwroXUkydqUIaRt0a+bCKTAGt+Mq8FzXwso=
X-Received: from pjtd8.prod.google.com ([2002:a17:90b:48:b0:2ee:4a90:3d06])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:268a:b0:2fe:8282:cb9d with SMTP id 98e67ed59e1d1-30c3d6467cbmr760151a91.28.1746728437874;
 Thu, 08 May 2025 11:20:37 -0700 (PDT)
Date: Thu,  8 May 2025 18:20:19 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.1015.ga840276032-goog
Message-ID: <20250508182025.2961555-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B585043B97
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,39fUcaAkKDZwPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,39fUcaAkKDZwPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 3VTYRQ3THS4K37JK4LXI36CXDH35I4P6
X-Message-ID-Hash: 3VTYRQ3THS4K37JK4LXI36CXDH35I4P6
X-MailFrom: 39fUcaAkKDZwPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v4 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3VTYRQ3THS4K37JK4LXI36CXDH35I4P6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VW50aWwgQ09ORklHX0RNQUJVRl9TWVNGU19TVEFUUyB3YXMgYWRkZWQgWzFdIGl0IHdhcyBvbmx5
IHBvc3NpYmxlIHRvDQpwZXJmb3JtIHBlci1idWZmZXIgYWNjb3VudGluZyB3aXRoIGRlYnVnZnMg
d2hpY2ggaXMgbm90IHN1aXRhYmxlIGZvcg0KcHJvZHVjdGlvbiBlbnZpcm9ubWVudHMuIEV2ZW50
dWFsbHkgd2UgZGlzY292ZXJlZCB0aGUgb3ZlcmhlYWQgd2l0aA0KcGVyLWJ1ZmZlciBzeXNmcyBm
aWxlIGNyZWF0aW9uL3JlbW92YWwgd2FzIHNpZ25pZmljYW50bHkgaW1wYWN0aW5nDQphbGxvY2F0
aW9uIGFuZCBmcmVlIHRpbWVzLCBhbmQgZXhhY2VyYmF0ZWQga2VybmZzIGxvY2sgY29udGVudGlv
bi4gWzJdDQpkbWFfYnVmX3N0YXRzX3NldHVwKCkgaXMgcmVzcG9uc2libGUgZm9yIDM5JSBvZiBz
aW5nbGUtcGFnZSBidWZmZXINCmNyZWF0aW9uIGR1cmF0aW9uLCBvciA3NCUgb2Ygc2luZ2xlLXBh
Z2UgZG1hX2J1Zl9leHBvcnQoKSBkdXJhdGlvbiB3aGVuDQpzdHJlc3NpbmcgZG1hYnVmIGFsbG9j
YXRpb25zIGFuZCBmcmVlcy4NCg0KSSBwcm90b3R5cGVkIGEgY2hhbmdlIGZyb20gcGVyLWJ1ZmZl
ciB0byBwZXItZXhwb3J0ZXIgc3RhdGlzdGljcyB3aXRoIGENClJDVSBwcm90ZWN0ZWQgbGlzdCBv
ZiBleHBvcnRlciBhbGxvY2F0aW9ucyB0aGF0IGFjY29tbW9kYXRlcyBtb3N0IChidXQNCm5vdCBh
bGwpIG9mIG91ciB1c2UtY2FzZXMgYW5kIGF2b2lkcyBhbG1vc3QgYWxsIG9mIHRoZSBzeXNmcyBv
dmVyaGVhZC4NCldoaWxlIHRoYXQgYWRkcyBsZXNzIG92ZXJoZWFkIHRoYW4gcGVyLWJ1ZmZlciBz
eXNmcywgYW5kIGxlc3MgZXZlbiB0aGFuDQp0aGUgbWFpbnRlbmFuY2Ugb2YgdGhlIGRtYWJ1ZiBk
ZWJ1Z2ZzX2xpc3QsIGl0J3Mgc3RpbGwgKmFkZGl0aW9uYWwqDQpvdmVyaGVhZCBvbiB0b3Agb2Yg
dGhlIGRlYnVnZnNfbGlzdCBhbmQgZG9lc24ndCBnaXZlIHVzIHBlci1idWZmZXIgaW5mby4NCg0K
VGhpcyBzZXJpZXMgdXNlcyB0aGUgZXhpc3RpbmcgZG1hYnVmIGRlYnVnZnNfbGlzdCB0byBpbXBs
ZW1lbnQgYSBCUEYNCmRtYWJ1ZiBpdGVyYXRvciwgd2hpY2ggYWRkcyBubyBvdmVyaGVhZCB0byBi
dWZmZXIgYWxsb2NhdGlvbi9mcmVlIGFuZA0KcHJvdmlkZXMgcGVyLWJ1ZmZlciBpbmZvLiBUaGUg
bGlzdCBoYXMgYmVlbiBtb3ZlZCBvdXRzaWRlIG9mDQpDT05GSUdfREVCVUdfRlMgc2NvcGUgc28g
dGhhdCBpdCBpcyBhbHdheXMgcG9wdWxhdGVkLiBUaGUgQlBGIHByb2dyYW0NCmxvYWRlZCBieSB1
c2Vyc3BhY2UgdGhhdCBleHRyYWN0cyBwZXItYnVmZmVyIGluZm9ybWF0aW9uIGdldHMgdG8gZGVm
aW5lDQppdHMgb3duIGludGVyZmFjZSB3aGljaCBhdm9pZHMgdGhlIGxhY2sgb2YgQUJJIHN0YWJp
bGl0eSB3aXRoIGRlYnVnZnMuDQoNClRoaXMgd2lsbCBhbGxvdyB1cyB0byByZXBsYWNlIG91ciB1
c2Ugb2YgQ09ORklHX0RNQUJVRl9TWVNGU19TVEFUUywgYW5kDQp0aGUgcGxhbiBpcyB0byByZW1v
dmUgaXQgZnJvbSB0aGUga2VybmVsIGFmdGVyIHRoZSBuZXh0IGxvbmd0ZXJtIHN0YWJsZQ0KcmVs
ZWFzZS4NCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjAxMjEw
MDQ0NDAwLjEwODAzMDgtMS1ocmlkeWFAZ29vZ2xlLmNvbQ0KWzJdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDIyMDUxNjE3MTMxNS4yNDAwNTc4LTEtdGptZXJjaWVyQGdvb2dsZS5jb20N
Cg0KdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDQxNDIyNTIyNy4zNjQyNjE4
LTEtdGptZXJjaWVyQGdvb2dsZS5jb20NCnYxIC0+IHYyOg0KTWFrZSB0aGUgRE1BIGJ1ZmZlciBs
aXN0IGluZGVwZW5kZW50IG9mIENPTkZJR19ERUJVR19GUyBwZXIgQ2hyaXN0aWFuIEvDtm5pZw0K
QWRkIENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUiBjaGVjayB0byBrZXJuZWwvYnBmL01ha2VmaWxl
IHBlciBrZXJuZWwgdGVzdCByb2JvdA0KVXNlIEJURl9JRF9MSVNUX1NJTkdMRSBpbnN0ZWFkIG9m
IEJURl9JRF9MSVNUX0dMT0JBTF9TSU5HTEUgcGVyIFNvbmcgTGl1DQpGaXh1cCBjb21tZW50IHN0
eWxlLCBtaXhpbmcgY29kZS9kZWNsYXJhdGlvbnMsIGFuZCB1c2UgQVNTRVJUX09LX0ZEIGluIHNl
bGZ0ZXN0IHBlciBTb25nIExpdQ0KQWRkIEJQRl9JVEVSX1JFU0NIRUQgZmVhdHVyZSB0byBicGZf
ZG1hYnVmX3JlZ19pbmZvIHBlciBBbGV4ZWkgU3Rhcm92b2l0b3YNCkFkZCBvcGVuLWNvZGVkIGl0
ZXJhdG9yIGFuZCBzZWxmdGVzdCBwZXIgQWxleGVpIFN0YXJvdm9pdG92DQpBZGQgYSBzZWNvbmQg
dGVzdCBidWZmZXIgZnJvbSB0aGUgc3lzdGVtIGRtYWJ1ZiBoZWFwIHRvIHNlbGZ0ZXN0cw0KVXNl
IHRoZSBCUEYgcHJvZ3JhbSB3ZSdsbCB1c2UgaW4gcHJvZHVjdGlvbiBmb3Igc2VsZnRlc3QgcGVy
IEFsZXhlaSBTdGFyb3ZvaXRvdg0KICBodHRwczovL3IuYW5kcm9pZC5jb20vYy9wbGF0Zm9ybS9z
eXN0ZW0vYnBmcHJvZ3MvKy8zNjE2MTIzLzIvZG1hYnVmSXRlci5jDQogIGh0dHBzOi8vci5hbmRy
b2lkLmNvbS9jL3BsYXRmb3JtL3N5c3RlbS9tZW1vcnkvbGlibWVtaW5mby8rLzM2MTQyNTkvMS9s
aWJkbWFidWZpbmZvL2RtYWJ1Zl9icGZfc3RhdHMuY3BwDQp2MjogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUwNTA0MjI0MTQ5LjEwMzM4NjctMS10am1lcmNpZXJAZ29vZ2xlLmNvbQ0K
djIgLT4gdjM6DQpSZWJhc2Ugb250byBicGYtbmV4dC9tYXN0ZXINCk1vdmUgZ2V0X25leHRfZG1h
YnVmKCkgaW50byBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jLCBhbG9uZyB3aXRoIHRoZQ0KICBu
ZXcgZ2V0X2ZpcnN0X2RtYWJ1ZigpLiBUaGlzIGF2b2lkcyBoYXZpbmcgdG8gZXhwb3NlIHRoZSBk
bWFidWYgbGlzdA0KICBhbmQgbXV0ZXggdG8gdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbCwgYW5kIGtl
ZXBzIHRoZSBkbWFidWYgbXV0ZXgNCiAgb3BlcmF0aW9ucyBuZWFyIGVhY2ggb3RoZXIgaW4gdGhl
IHNhbWUgZmlsZS4gKENocmlzdGlhbiBLw7ZuaWcpDQpBZGQgQ2hyaXN0aWFuJ3MgUkIgdG8gZG1h
LWJ1ZjogUmVuYW1lIGRlYnVnZnMgc3ltYm9scw0KRHJvcCBSRkM6IGRtYS1idWY6IFJlbW92ZSBE
TUEtQlVGIHN0YXRpc3RpY3MNCnYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1
MDcwMDEwMzYuMjI3ODc4MS0xLXRqbWVyY2llckBnb29nbGUuY29tDQp2MyAtPiB2NDoNCkZpeCBz
ZWxmdGVzdCBCUEYgcHJvZ3JhbSBjb21tZW50IHN0eWxlIChub3Qga2RvYykgcGVyIEFsZXhlaSBT
dGFyb3ZvaXRvdg0KRml4IGRtYS1idWYuYyBrZG9jIGNvbW1lbnQgc3R5bGUgcGVyIEFsZXhlaSBT
dGFyb3ZvaXRvdg0KUmVuYW1lIGdldF9maXJzdF9kbWFidWYgLyBnZXRfbmV4dF9kbWFidWYgdG8g
ZG1hX2J1Zl9pdGVyX2JlZ2luIC8NCiAgZG1hX2J1Zl9pdGVyX25leHQgcGVyIENocmlzdGlhbiBL
w7ZuaWcNCkFkZCBDaHJpc3RpYW4ncyBSQiB0byBicGY6IEFkZCBkbWFidWYgaXRlcmF0b3INCg0K
VC5KLiBNZXJjaWVyICg1KToNCiAgZG1hLWJ1ZjogUmVuYW1lIGRlYnVnZnMgc3ltYm9scw0KICBi
cGY6IEFkZCBkbWFidWYgaXRlcmF0b3INCiAgYnBmOiBBZGQgb3BlbiBjb2RlZCBkbWFidWYgaXRl
cmF0b3INCiAgc2VsZnRlc3RzL2JwZjogQWRkIHRlc3QgZm9yIGRtYWJ1Zl9pdGVyDQogIHNlbGZ0
ZXN0cy9icGY6IEFkZCB0ZXN0IGZvciBvcGVuIGNvZGVkIGRtYWJ1Zl9pdGVyDQoNCiBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgICAgfCAgOTggKysrKystLQ0KIGlu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgICAgICAgICAgICB8ICAgNCArLQ0KIGtl
cm5lbC9icGYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArDQoga2Vy
bmVsL2JwZi9kbWFidWZfaXRlci5jICAgICAgICAgICAgICAgICAgICAgIHwgMTQ5ICsrKysrKysr
KysNCiBrZXJuZWwvYnBmL2hlbHBlcnMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDUg
Kw0KIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5oICB8ICAgNSAr
DQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL2NvbmZpZyAgICAgICAgICAgIHwgICAzICsN
CiAuLi4vc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMgICAgfCAyNTggKysr
KysrKysrKysrKysrKysrDQogLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZf
aXRlci5jIHwgIDkxICsrKysrKw0KIDkgZmlsZXMgY2hhbmdlZCwgNTk0IGluc2VydGlvbnMoKyks
IDIyIGRlbGV0aW9ucygtKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBrZXJuZWwvYnBmL2RtYWJ1Zl9p
dGVyLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3By
b2dfdGVzdHMvZG1hYnVmX2l0ZXIuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIuYw0KDQoNCmJhc2UtY29tbWl0OiA0Mzc0
NWQxMWJmZDk2ODNhYmRmMDhhZDdhNWNjNDAzZDZhOWZmZDE1DQotLSANCjIuNDkuMC4xMDE1Lmdh
ODQwMjc2MDMyLWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
