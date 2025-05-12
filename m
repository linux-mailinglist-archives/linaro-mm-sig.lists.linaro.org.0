Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4AFAB3F5A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 19:41:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F70844A29
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 17:41:05 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 97FF0413D9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 17:40:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=IFNQkTFn;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3ojIiaAkKDdcMCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3ojIiaAkKDdcMCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30abb33d1d2so7484844a91.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 10:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747071650; x=1747676450; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eBYOHelJunIHuJksv+29i3wZCe50rVCOEbtcj9aAZWE=;
        b=IFNQkTFnYXc6xNh3jnEVsBP/t8l2WcBQmiZMTimqtgBm3B5xzMAem4Jcn8FndWb9CI
         SGHPP+yXAsTAZiNGg3pZ5MAl3nzg2GnVTVca6URnYZaNTEFgO0RLXOD0W1UCkIzg2qYk
         gaUcQ84HavR5oOGC3KbYtnB1hyvsMMWII4wolvb1Ed8liOe7A31vW7GoQ1lpFYw8t6hB
         Zhufy1lHkFRtTXHElP3eiEMSAF57PfaI8X+cPp7Uurgg0soi08A1zTQO4c8vVNsmHX9l
         0uoJ41To2kT3Ydpm9IugNlr5UvF4cQC65z40NLqmRm20efj8MhOo5xDDBgluPqb/iZb7
         maTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747071650; x=1747676450;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBYOHelJunIHuJksv+29i3wZCe50rVCOEbtcj9aAZWE=;
        b=ShJXDr1e2I7rC3xYzs+B0oTbJRA1oZ0nsKViYpEiH8Tdk3IcW5bfdbhmdfW+3mQ04K
         BzQZztU7hGi4Wx7AQh3Ojn3I+4K8x9lQAINFXMHTvdxQ3Uqa8rG4iqzUl/pR/vgY/co3
         ezGD8eVVk7Gm05a/gNoXUp3ixiLmrnxM/ua1rRgbxKQSBzzWucS2u1359phDveMk/Dp8
         DUcBZj5LZiNKzLq+w1v9MlGbrBmw/uthqtY7XXI5R78U/W1U5WU7qFX4XFNsK7qiZTsC
         uoQ1O+3A7AtIvzMD+A3bX2QhBldfCIK67e9NcJOFhQp32+u+K1RzZ9sQGWQDCowB0Kev
         NLqw==
X-Forwarded-Encrypted: i=1; AJvYcCURojYYQ8LY0VZ2yrAmOFJsXfS8uuF4DsQ6Yv2bdgoELtP4HLUmSFqzQYRHTZOyXC4eVPcT7UfoEIUkbqNb@lists.linaro.org
X-Gm-Message-State: AOJu0YykD+jMYvuE/T694nChxscTKjpq69H3ZKuwAy6MEgG5b9SvuWve
	VAwn0cD0cIhbWN/OL7VCspU063FmsBPHPhz6uJU+FJgaNFKka002R/gTEfexWNckde+tNslgVw7
	mZ0Q8H92FnjEVqA==
X-Google-Smtp-Source: AGHT+IFzMCh38Oc1kAsUKXxU9hlKM203yvfUD0dvHa7bGIfNoTLZ2frsFjS+If3JtUJ6jRpxlO+Sx3tWCnqzocM=
X-Received: from pjbse15.prod.google.com ([2002:a17:90b:518f:b0:308:64af:7bb9])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:4c8e:b0:2fa:1851:a023 with SMTP id 98e67ed59e1d1-30c3d657026mr21415776a91.35.1747071650573;
 Mon, 12 May 2025 10:40:50 -0700 (PDT)
Date: Mon, 12 May 2025 17:40:31 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250512174036.266796-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 97FF0413D9
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3ojIiaAkKDdcMCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-pj1-f73.google.com:helo,mail-pj1-f73.google.com:rdns];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3ojIiaAkKDdcMCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: AV6SQDEYEDJSFLHHXVOBHI2FIY5M5JEJ
X-Message-ID-Hash: AV6SQDEYEDJSFLHHXVOBHI2FIY5M5JEJ
X-MailFrom: 3ojIiaAkKDdcMCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v5 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AV6SQDEYEDJSFLHHXVOBHI2FIY5M5JEJ/>
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
aXN0IGluZGVwZW5kZW50IG9mIENPTkZJR19ERUJVR19GUyBwZXIgQ2hyaXN0aWFuDQogIEvDtm5p
Zw0KQWRkIENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUiBjaGVjayB0byBrZXJuZWwvYnBmL01ha2Vm
aWxlIHBlciBrZXJuZWwNCiAgdGVzdCByb2JvdA0KVXNlIEJURl9JRF9MSVNUX1NJTkdMRSBpbnN0
ZWFkIG9mIEJURl9JRF9MSVNUX0dMT0JBTF9TSU5HTEUgcGVyIFNvbmcgTGl1DQpGaXh1cCBjb21t
ZW50IHN0eWxlLCBtaXhpbmcgY29kZS9kZWNsYXJhdGlvbnMsIGFuZCB1c2UgQVNTRVJUX09LX0ZE
IGluDQogIHNlbGZ0ZXN0IHBlciBTb25nIExpdQ0KQWRkIEJQRl9JVEVSX1JFU0NIRUQgZmVhdHVy
ZSB0byBicGZfZG1hYnVmX3JlZ19pbmZvIHBlciBBbGV4ZWkNCiAgU3Rhcm92b2l0b3YNCkFkZCBv
cGVuLWNvZGVkIGl0ZXJhdG9yIGFuZCBzZWxmdGVzdCBwZXIgQWxleGVpIFN0YXJvdm9pdG92DQpB
ZGQgYSBzZWNvbmQgdGVzdCBidWZmZXIgZnJvbSB0aGUgc3lzdGVtIGRtYWJ1ZiBoZWFwIHRvIHNl
bGZ0ZXN0cw0KVXNlIHRoZSBCUEYgcHJvZ3JhbSB3ZSdsbCB1c2UgaW4gcHJvZHVjdGlvbiBmb3Ig
c2VsZnRlc3QgcGVyIEFsZXhlaQ0KICBTdGFyb3ZvaXRvdg0KICBodHRwczovL3IuYW5kcm9pZC5j
b20vYy9wbGF0Zm9ybS9zeXN0ZW0vYnBmcHJvZ3MvKy8zNjE2MTIzLzIvZG1hYnVmSXRlci5jDQog
IGh0dHBzOi8vci5hbmRyb2lkLmNvbS9jL3BsYXRmb3JtL3N5c3RlbS9tZW1vcnkvbGlibWVtaW5m
by8rLzM2MTQyNTkvMS9saWJkbWFidWZpbmZvL2RtYWJ1Zl9icGZfc3RhdHMuY3BwDQp2MjogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTA0MjI0MTQ5LjEwMzM4NjctMS10am1lcmNp
ZXJAZ29vZ2xlLmNvbQ0KdjIgLT4gdjM6DQpSZWJhc2Ugb250byBicGYtbmV4dC9tYXN0ZXINCk1v
dmUgZ2V0X25leHRfZG1hYnVmKCkgaW50byBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jLCBhbG9u
ZyB3aXRoIHRoZQ0KICBuZXcgZ2V0X2ZpcnN0X2RtYWJ1ZigpLiBUaGlzIGF2b2lkcyBoYXZpbmcg
dG8gZXhwb3NlIHRoZSBkbWFidWYgbGlzdA0KICBhbmQgbXV0ZXggdG8gdGhlIHJlc3Qgb2YgdGhl
IGtlcm5lbCwgYW5kIGtlZXBzIHRoZSBkbWFidWYgbXV0ZXgNCiAgb3BlcmF0aW9ucyBuZWFyIGVh
Y2ggb3RoZXIgaW4gdGhlIHNhbWUgZmlsZS4gKENocmlzdGlhbiBLw7ZuaWcpDQpBZGQgQ2hyaXN0
aWFuJ3MgUkIgdG8gZG1hLWJ1ZjogUmVuYW1lIGRlYnVnZnMgc3ltYm9scw0KRHJvcCBSRkM6IGRt
YS1idWY6IFJlbW92ZSBETUEtQlVGIHN0YXRpc3RpY3MNCnYzOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNTA1MDcwMDEwMzYuMjI3ODc4MS0xLXRqbWVyY2llckBnb29nbGUuY29tDQp2
MyAtPiB2NDoNCkZpeCBzZWxmdGVzdCBCUEYgcHJvZ3JhbSBjb21tZW50IHN0eWxlIChub3Qga2Rv
YykgcGVyIEFsZXhlaSBTdGFyb3ZvaXRvdg0KRml4IGRtYS1idWYuYyBrZG9jIGNvbW1lbnQgc3R5
bGUgcGVyIEFsZXhlaSBTdGFyb3ZvaXRvdg0KUmVuYW1lIGdldF9maXJzdF9kbWFidWYgLyBnZXRf
bmV4dF9kbWFidWYgdG8gZG1hX2J1Zl9pdGVyX2JlZ2luIC8NCiAgZG1hX2J1Zl9pdGVyX25leHQg
cGVyIENocmlzdGlhbiBLw7ZuaWcNCkFkZCBDaHJpc3RpYW4ncyBSQiB0byBicGY6IEFkZCBkbWFi
dWYgaXRlcmF0b3INCnY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1MDgxODIw
MjUuMjk2MTU1NS0xLXRqbWVyY2llckBnb29nbGUuY29tDQp2NCAtPiB2NToNCkFkZCBDaHJpc3Rp
YW4ncyBBY2tzIHRvIGFsbCBwYXRjaGVzDQpBZGQgU29uZyBMaXUncyBBY2tzDQpNb3ZlIEJURl9J
RF9MSVNUX1NJTkdMRSBhbmQgREVGSU5FX0JQRl9JVEVSX0ZVTkMgY2xvc2VyIHRvIHVzYWdlIHBl
cg0KICBTb25nIExpdQ0KRml4IG9wZW4tY29kZWQgaXRlcmF0b3IgY29tbWVudCBzdHlsZSBwZXIg
U29uZyBMaXUNCk1vdmUgaXRlcmF0b3IgdGVybWluYXRpb24gY2hlY2sgdG8gaXRzIG93biBzdWJ0
ZXN0IHBlciBTb25nIExpdQ0KUmV3b3JrIHNlbGZ0ZXN0IGJ1ZmZlciBjcmVhdGlvbiBwZXIgU29u
ZyBMaXUNCkZpeCBzcGFjaW5nIGluIHNhbml0aXplX3N0cmluZyBwZXIgQlBGIENJDQoNClQuSi4g
TWVyY2llciAoNSk6DQogIGRtYS1idWY6IFJlbmFtZSBkZWJ1Z2ZzIHN5bWJvbHMNCiAgYnBmOiBB
ZGQgZG1hYnVmIGl0ZXJhdG9yDQogIGJwZjogQWRkIG9wZW4gY29kZWQgZG1hYnVmIGl0ZXJhdG9y
DQogIHNlbGZ0ZXN0cy9icGY6IEFkZCB0ZXN0IGZvciBkbWFidWZfaXRlcg0KICBzZWxmdGVzdHMv
YnBmOiBBZGQgdGVzdCBmb3Igb3BlbiBjb2RlZCBkbWFidWZfaXRlcg0KDQogZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgICAgIHwgIDk4ICsrKysrLS0NCiBpbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKy0NCiBrZXJuZWwv
YnBmL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKw0KIGtlcm5lbC9i
cGYvZG1hYnVmX2l0ZXIuYyAgICAgICAgICAgICAgICAgICAgICB8IDE1MCArKysrKysrKysrDQog
a2VybmVsL2JwZi9oZWxwZXJzLmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICsNCiAu
Li4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmltZW50YWwuaCAgfCAgIDUgKw0KIHRv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9jb25maWcgICAgICAgICAgICB8ICAgMyArDQogLi4u
L3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFidWZfaXRlci5jICAgIHwgMjc2ICsrKysrKysr
KysrKysrKysrKw0KIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIu
YyB8ICA5MSArKysrKysNCiA5IGZpbGVzIGNoYW5nZWQsIDYxMyBpbnNlcnRpb25zKCspLCAyMiBk
ZWxldGlvbnMoLSkNCiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2JwZi9kbWFidWZfaXRlci5j
DQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rl
c3RzL2RtYWJ1Zl9pdGVyLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMNCg0KDQpiYXNlLWNvbW1pdDogNDM3NDVkMTFi
ZmQ5NjgzYWJkZjA4YWQ3YTVjYzQwM2Q2YTlmZmQxNQ0KLS0gDQoyLjQ5LjAuMTA0NS5nMTcwNjEz
ZWY0MS1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
