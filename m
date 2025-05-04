Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC1BAA89C6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 00:42:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6EDF460AB
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 22:42:37 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	by lists.linaro.org (Postfix) with ESMTPS id 91A5B450C1
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 May 2025 22:42:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=076BTi4s;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3T-0XaAkKDdAF580Dy40D2AA270.yA8749wDA-88-E4274EFE.749wDA.AD2@flex--tjmercier.bounces.google.com designates 209.85.214.202 as permitted sender) smtp.mailfrom=3T-0XaAkKDdAF580Dy40D2AA270.yA8749wDA-88-E4274EFE.749wDA.AD2@flex--tjmercier.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-2254bdd4982so54655755ad.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 04 May 2025 15:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746398544; x=1747003344; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h2Ves7K5HSdZ8gJm7O2bxGfv8D+1P/iEs4NcrGFZQAU=;
        b=076BTi4sR2CdetndOEC0/F4N0VZWil3jQoeFvJDu9KHu0itzFXiUvyJjv6u1KVE1ur
         9vv8wzymx4xPD+8r/eWe65OLG41uCBwObbqFSy/vjq2xFcFDB3tfnJJjOYBMktyxKZq8
         8xyAUKJjmw9H7Pu9iCzBrvyt8TBj7ch30ayVvwWAHrr5JbB8Q24oxekcPaYBxG9Hj9bk
         nQ1F91Ftt8Y/UuIQrXrAUldCnCqzB5s5yA7zgGXvsxJnttNuyA6kOEWr1TS3V33iP6WF
         XfccLsrTnTvi3VQAACfp++09Fy2v9I6mj2HuyMkRcZ/W4xvk2s3eb4CJvzYL+MErB/Gy
         3L4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746398544; x=1747003344;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2Ves7K5HSdZ8gJm7O2bxGfv8D+1P/iEs4NcrGFZQAU=;
        b=tfV5S90WS7WopFeaBkkzwwWmMyTI3azhil5H0nXfaziPDHDKPC45w30EMk/G1sYY+7
         FXYMuxKPf6iEZ5r96Tewj7RaosdiD5o+k5kIPvgtu3ESDdsH+ePuNglMzrn7q4EwKc6X
         7ZytxKvZQSvdyxPX1HRCIgN2gkOs/07IbPhI2VpaaL0mz7G5F64JWnj9Z+rQvIYNl6Df
         xDQ19VjQACoC8k9lI/0aeCHBbFJRUrl1hm7e4K1LkFsU+eI3y6f2IlG+RIGXtyAUg2fF
         Gj6grueQOvcna7UTl/D8gW2fvVE7hmEdit/cPZdhy9tUYJ/SxwXjBFb6OuAzKx6DrPW0
         bruQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWIxvCww/BsKxBrNuCquKWblgpPN0ebRBDCgs5Bn2iOOmEZzw/lRJiXC9kv1LjWbRjc6UcqOd0amVQPe1i@lists.linaro.org
X-Gm-Message-State: AOJu0YwrtMJBfqPghjo74fphjwVXzQ0lqp7B8c+VdJkHgjPNtQGSOySt
	8Wz4pRfLFSkEZcyY5fXRWnQcJCK0nmUS1qgaRJ3hp7MWQRdz4IY9+6hxQ/Zte3ziLznjtW8/HLV
	7RnjvjHIyW+zUUA==
X-Google-Smtp-Source: AGHT+IG3s83AHDeqTtbeNWFu9VJHl3WJY2PIPoEJXseXQ3szKVonPVO7le0fvgXadvoDti/xd87e1NfGDxlroAA=
X-Received: from plbmk14.prod.google.com ([2002:a17:903:2bce:b0:21f:4f0a:c7e2])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:2350:b0:220:d078:eb33 with SMTP id d9443c01a7336-22e18c0dda7mr103753045ad.36.1746398543674;
 Sun, 04 May 2025 15:42:23 -0700 (PDT)
Date: Sun,  4 May 2025 22:41:36 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250504224149.1033867-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 91A5B450C1
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3T-0XaAkKDdAF580Dy40D2AA270.yA8749wDA-88-E4274EFE.749wDA.AD2@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.202:from];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3T-0XaAkKDdAF580Dy40D2AA270.yA8749wDA-88-E4274EFE.749wDA.AD2@flex--tjmercier.bounces.google.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: Y2KYMKVC6PQ6AQ4YZSOWSVSTHLBV7GID
X-Message-ID-Hash: Y2KYMKVC6PQ6AQ4YZSOWSVSTHLBV7GID
X-MailFrom: 3T-0XaAkKDdAF580Dy40D2AA270.yA8749wDA-88-E4274EFE.749wDA.AD2@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/6] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y2KYMKVC6PQ6AQ4YZSOWSVSTHLBV7GID/>
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
bGl0eSB3aXRoIGRlYnVnZnMuDQoNCkFzIHRoaXMgaXMgYSByZXBsYWNlbWVudCBmb3Igb3VyIHVz
ZSBvZiBDT05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTLCB0aGUNCmxhc3QgcGF0Y2ggaXMgYSBSRkMg
Zm9yIHJlbW92aW5nIGl0IGZyb20gdGhlIGtlcm5lbC4gUGxlYXNlIHNlZSBteQ0Kc3VnZ2VzdGlv
biB0aGVyZSByZWdhcmRpbmcgdGhlIHRpbWVsaW5lIGZvciB0aGF0Lg0KDQpbMV0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAyMDEyMTAwNDQ0MDAuMTA4MDMwOC0xLWhyaWR5
YUBnb29nbGUuY29tDQpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwNTE2MTcx
MzE1LjI0MDA1NzgtMS10am1lcmNpZXJAZ29vZ2xlLmNvbQ0KDQp2MTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjUwNDE0MjI1MjI3LjM2NDI2MTgtMS10am1lcmNpZXJAZ29vZ2xlLmNv
bQ0KDQp2MSAtPiB2MjoNCk1ha2UgdGhlIERNQSBidWZmZXIgbGlzdCBpbmRlcGVuZGVudCBvZiBD
T05GSUdfREVCVUdfRlMgcGVyIENocmlzdGlhbiBLw7ZuaWcNCkFkZCBDT05GSUdfRE1BX1NIQVJF
RF9CVUZGRVIgY2hlY2sgdG8ga2VybmVsL2JwZi9NYWtlZmlsZSBwZXIga2VybmVsIHRlc3Qgcm9i
b3QNClVzZSBCVEZfSURfTElTVF9TSU5HTEUgaW5zdGVhZCBvZiBCVEZfSURfTElTVF9HTE9CQUxf
U0lOR0xFIHBlciBTb25nIExpdQ0KRml4dXAgY29tbWVudCBzdHlsZSwgbWl4aW5nIGNvZGUvZGVj
bGFyYXRpb25zLCBhbmQgdXNlIEFTU0VSVF9PS19GRCBpbiBzZWxmdGVzdCBwZXIgU29uZyBMaXUN
CkFkZCBCUEZfSVRFUl9SRVNDSEVEIGZlYXR1cmUgdG8gYnBmX2RtYWJ1Zl9yZWdfaW5mbyBwZXIg
QWxleGVpIFN0YXJvdm9pdG92DQpBZGQgb3Blbi1jb2RlZCBpdGVyYXRvciBhbmQgc2VsZnRlc3Qg
cGVyIEFsZXhlaSBTdGFyb3ZvaXRvdg0KQWRkIGEgc2Vjb25kIHRlc3QgYnVmZmVyIGZyb20gdGhl
IHN5c3RlbSBkbWFidWYgaGVhcCB0byBzZWxmdGVzdHMNClVzZSB0aGUgQlBGIHByb2dyYW0gd2Un
bGwgdXNlIGluIHByb2R1Y3Rpb24gZm9yIHNlbGZ0ZXN0IHBlciBBbGV4ZWkgU3Rhcm92b2l0b3YN
CiAgaHR0cHM6Ly9yLmFuZHJvaWQuY29tL2MvcGxhdGZvcm0vc3lzdGVtL2JwZnByb2dzLysvMzYx
NjEyMy8yL2RtYWJ1Zkl0ZXIuYw0KICBodHRwczovL3IuYW5kcm9pZC5jb20vYy9wbGF0Zm9ybS9z
eXN0ZW0vbWVtb3J5L2xpYm1lbWluZm8vKy8zNjE0MjU5LzEvbGliZG1hYnVmaW5mby9kbWFidWZf
YnBmX3N0YXRzLmNwcA0KDQpULkouIE1lcmNpZXIgKDYpOg0KICBkbWEtYnVmOiBSZW5hbWUgYW5k
IGV4cG9zZSBkZWJ1Z2ZzIHN5bWJvbHMNCiAgYnBmOiBBZGQgZG1hYnVmIGl0ZXJhdG9yDQogIGJw
ZjogQWRkIG9wZW4gY29kZWQgZG1hYnVmIGl0ZXJhdG9yDQogIHNlbGZ0ZXN0cy9icGY6IEFkZCB0
ZXN0IGZvciBkbWFidWZfaXRlcg0KICBzZWxmdGVzdHMvYnBmOiBBZGQgdGVzdCBmb3Igb3BlbiBj
b2RlZCBkbWFidWZfaXRlcg0KICBSRkM6IGRtYS1idWY6IFJlbW92ZSBETUEtQlVGIHN0YXRpc3Rp
Y3MNCg0KIC4uLi9BQkkvdGVzdGluZy9zeXNmcy1rZXJuZWwtZG1hYnVmLWJ1ZmZlcnMgICB8ICAy
NCAtLQ0KIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCAgICAgICAgICB8ICAg
NSAtDQogZHJpdmVycy9kbWEtYnVmL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgIDE1
IC0NCiBkcml2ZXJzL2RtYS1idWYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgIDEg
LQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgICAgICAgICB8IDIwMiAt
LS0tLS0tLS0tLS0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmggICAg
ICAgICB8ICAzNSAtLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAg
ICAgICAgfCAgNTggKy0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgNiArLQ0KIGtlcm5lbC9icGYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMyArDQoga2VybmVsL2JwZi9kbWFidWZfaXRlci5jICAgICAgICAgICAgICAg
ICAgICAgIHwgMTc3ICsrKysrKysrKysrKw0KIGtlcm5lbC9icGYvaGVscGVycy5jICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgNSArDQogLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZf
ZXhwZXJpbWVudGFsLmggIHwgICA1ICsNCiB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvY29u
ZmlnICAgICAgICAgICAgfCAgIDMgKw0KIC4uLi9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1h
YnVmX2l0ZXIuYyAgICB8IDI1OCArKysrKysrKysrKysrKysrKysNCiAuLi4vdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMgfCAgOTEgKysrKysrDQogMTUgZmlsZXMgY2hh
bmdlZCwgNTYxIGluc2VydGlvbnMoKyksIDMyNyBkZWxldGlvbnMoLSkNCiBkZWxldGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9zeXNmcy1rZXJuZWwtZG1hYnVmLWJ1ZmZl
cnMNCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3Rh
dHMuYw0KIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1z
dGF0cy5oDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGtlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0KIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9k
bWFidWZfaXRlci5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9ncy9kbWFidWZfaXRlci5jDQoNCg0KYmFzZS1jb21taXQ6IDBhZjJmNmJlMWI0Mjgx
Mzg1YjYxOGNiODZhZDk0NmVkZWQwODlhYzgNCi0tIA0KMi40OS4wLjkwNi5nMWYzMGExOWMwMi1n
b29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
