Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E8CAC171F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 May 2025 01:04:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7705B443BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 23:04:51 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 18C6844245
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 23:04:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=xr2dkR7m;
	spf=pass (lists.linaro.org: domain of 3hq0vaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3hq0vaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30ebd48a3c7so5641672a91.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 16:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747955079; x=1748559879; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u8dGj0Abdvh7XPjbZNccc6ABk5KSqfYP94dRpsBQEFQ=;
        b=xr2dkR7mp8bi1RqPzaosdgy9xWGcgBMOJZMwVPN2ENYX2Oel8tV67EXTxv1w8lhhk1
         YFL+ZHRiFAEdRxRLxAbaM0ObJBgkkvYOgciMqbBRLaons615c7oV/LstGkNBucp/GfNN
         7o+P9i/Sfi4sp/5rXMPLpJEGx8OTls9iGehx6xpSWWXtdh+PDv+ZJSgYX5D2NuZ2w9US
         A4DRj6jIckZBJtQAGLHgL7K4ixBRtCRyZQHM+gPohQZOFJn9/z+6SUhgffbI6rL5QeQ6
         Fic3KoNjg27yIXWNC7L0jrkeBGtZjhpfzvIhSEUwuRpJa7Vb/anMCBipXmEVRQ59+Rcs
         wqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747955079; x=1748559879;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8dGj0Abdvh7XPjbZNccc6ABk5KSqfYP94dRpsBQEFQ=;
        b=QCLhOpOBYkSIkSKBMov5VhR/gYNqjBe4hHWynf395vpP5bTgxRpbp6yr8aAjNIa3wa
         zqgEbn9hv75grnGInbJ/BcUOF9qDV6utQ87AoVbrh2YnjdK1AuY1UUAJ9RIOGNhwnd2/
         8Tsh7MMqZ/lKQclw0cWbzbkVY0BkPdiYgwEjZFTvKSbcBDJXgmmbLnCE1yghMi7ix22X
         ytd10CetR1XWt86EE6OR/y9paI+QLPxaif/ILURsSpDzmKp5WZbmF4b9C1xZoxpvelyy
         smgi23MtT69hAN7N67vjUjl5arZBNbjbgTPYQdKGKp16P09IulfP8eynqeHLUo5N0Rg7
         g5Mw==
X-Forwarded-Encrypted: i=1; AJvYcCXYES2IkOiXlxogNf1qHq/7wxtZjp6Civo3ZdMx1RYf8rrFrWpTK6APJ+ADPdqXD9P3K24V0Yvthzo1H8zG@lists.linaro.org
X-Gm-Message-State: AOJu0Yx9x1RQ8VfLPrAZx77rpL3UlGdWru5w5hUKCahLGmNlMZC/Bmon
	KBKPzeKcWFwYMM4UUXVRf/1gXeGsxZejYOMJglVz9UFb3Lpp0mHVZuatmklk+6Hexprk6JiAxic
	uxxk8ePR9N8FluL2NHA==
X-Google-Smtp-Source: AGHT+IEwmzIUT8YGStliPU77KEwWDLWWSMW6VUWezx0zqgoWVOlibiGqHVnAaZczx2UCmbfZm6yPSMlECmgJUJ0=
X-Received: from pjbsi6.prod.google.com ([2002:a17:90b:5286:b0:2fc:1158:9fe5])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:3806:b0:308:5273:4dee with SMTP id 98e67ed59e1d1-310e96e2ed3mr1380738a91.15.1747955078942;
 Thu, 22 May 2025 16:04:38 -0700 (PDT)
Date: Thu, 22 May 2025 23:04:24 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.1151.ga128411c76-goog
Message-ID: <20250522230429.941193-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3hq0vaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	DNSWL_BLOCKED(0.00)[209.85.216.73:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3hq0vaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 18C6844245
X-Spamd-Bar: /
Message-ID-Hash: FUVBJTQPJW63V2NHC7OPWLCP7JDMG4K5
X-Message-ID-Hash: FUVBJTQPJW63V2NHC7OPWLCP7JDMG4K5
X-MailFrom: 3hq0vaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v7 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FUVBJTQPJW63V2NHC7OPWLCP7JDMG4K5/>
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
ZyBMaXUNCkZpeCBzcGFjaW5nIGluIHNhbml0aXplX3N0cmluZyBwZXIgQlBGIENJDQp2NTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTEyMTc0MDM2LjI2Njc5Ni0xLXRqbWVyY2ll
ckBnb29nbGUuY29tDQp2NSAtPiB2NjoNClNvbmcgTGl1Og0KICBJbml0IHRlc3QgYnVmZmVyIEZE
cyB0byAtMQ0KICBaZXJvLWluaXQgdWRtYWJ1Zl9jcmVhdGUgZm9yIGZ1dHVyZSBwcm9vZmluZw0K
ICBCYWlsIGVhcmx5IGZvciBpdGVyYXRvciBmZC9GSUxFIGNyZWF0aW9uIGZhaWx1cmUNCiAgRGVy
ZWZlcmVuY2UgY2hhciBwdHIgdG8gY2hlY2sgZm9yIE5VTCBpbiBzYW5pdGl6ZV9zdHJpbmcoKQ0K
ICBNb3ZlIG1hcCBpbnNlcnRpb24gZnJvbSBjcmVhdGVfdGVzdF9idWZmZXJzKCkgdG8gdGVzdF9k
bWFidWZfaXRlcigpDQogIEFkZCBBQ0sgdG8gc2VsZnRlc3RzL2JwZjogQWRkIHRlc3QgZm9yIG9w
ZW4gY29kZWQgZG1hYnVmX2l0ZXINCnY2OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
NTA1MTMxNjM2MDEuODEyMzE3LTEtdGptZXJjaWVyQGdvb2dsZS5jb20NCnY2IC0+IHY3Og0KWmVy
byB1bmluaXRpYWxpemVkIG5hbWUgYnl0ZXMgZm9sbG93aW5nIHRoZSBlbmQgb2YgbmFtZSBzdHJp
bmdzIHBlcg0KICBzMzkweCBCUEYgQ0kNClJlb3JkZXIgc2FuaXRpemVfc3RyaW5nIGJvdW5kcyBj
aGVja3MgcGVyIFNvbmcgTGl1DQpBZGQgU29uZydzIEFjayB0bzogc2VsZnRlc3RzL2JwZjogQWRk
IHRlc3QgZm9yIGRtYWJ1Zl9pdGVyDQpSZWJhc2Ugb250byBicGYtbmV4dC9tYXN0ZXIgcGVyIEJQ
RiBDSQ0KDQpULkouIE1lcmNpZXIgKDUpOg0KICBkbWEtYnVmOiBSZW5hbWUgZGVidWdmcyBzeW1i
b2xzDQogIGJwZjogQWRkIGRtYWJ1ZiBpdGVyYXRvcg0KICBicGY6IEFkZCBvcGVuIGNvZGVkIGRt
YWJ1ZiBpdGVyYXRvcg0KICBzZWxmdGVzdHMvYnBmOiBBZGQgdGVzdCBmb3IgZG1hYnVmX2l0ZXIN
CiAgc2VsZnRlc3RzL2JwZjogQWRkIHRlc3QgZm9yIG9wZW4gY29kZWQgZG1hYnVmX2l0ZXINCg0K
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgICB8ICA5OCArKysr
LS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQg
Ky0NCiBrZXJuZWwvYnBmL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMg
Kw0KIGtlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYyAgICAgICAgICAgICAgICAgICAgICB8IDE1MCAr
KysrKysrKysNCiBrZXJuZWwvYnBmL2hlbHBlcnMuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDUgKw0KIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5oICB8
ICAgNSArDQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL2NvbmZpZyAgICAgICAgICAgIHwg
ICAzICsNCiAuLi4vc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMgICAgfCAy
ODUgKysrKysrKysrKysrKysrKysrDQogLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9k
bWFidWZfaXRlci5jIHwgMTAxICsrKysrKysNCiA5IGZpbGVzIGNoYW5nZWQsIDYzMiBpbnNlcnRp
b25zKCspLCAyMiBkZWxldGlvbnMoLSkNCiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2JwZi9k
bWFidWZfaXRlci5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMNCg0KDQpiYXNlLWNvbW1p
dDogNjg4OGEwMzZjZmMzZDYxN2QwODQzZWNjOWJkODUwNGU5MWZiOWRlNg0KLS0gDQoyLjQ5LjAu
MTE1MS5nYTEyODQxMWM3Ni1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
