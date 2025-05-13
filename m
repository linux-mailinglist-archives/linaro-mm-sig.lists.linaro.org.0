Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD087AB5A16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 18:36:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E77924597A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 16:36:31 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id A991345965
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 16:36:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="PPa/Zq/A";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3_3QjaAkKDb4xnqivgmivksskpi.gsqpmrevs-qq-wmkpmwxw.pmrevs.svk@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3_3QjaAkKDb4xnqivgmivksskpi.gsqpmrevs-qq-wmkpmwxw.pmrevs.svk@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-30a59538b17so5613210a91.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 09:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747154176; x=1747758976; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RJer6fjOgFGncHrv8GbyId4RjSKe5It7mnfoP9OBkic=;
        b=PPa/Zq/AgzccOc+LxQ8iSaf10qhEbkziKfpRqUW5BPJRYP/wwbCT0RbiWjz59iAv03
         rFZCzl4HhB3vl/ZvlZQDKoh9Jm3zbjFpQDCQ9FpiXUewB93QB7aLI7/fHR3vTaa0mtfH
         YpsoQrdtw9VCZHqtP//uYBl/UV+XP3IobzLYRiPnu4Bd0uje+/UpqiaxxRwkK891PiU1
         Doy3OjTy8KvsjKw/0mSd5HnNtFam2VpqJHY2feiKM5drASw9pUTrGlf9gBVzPPfz2kKH
         Ted/mS52+/ZQnvdoRg1aXaOJHppE7bO1AOBProbjsxoQZzln4YE0FVT5GHR/7f6zDiKu
         NbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747154176; x=1747758976;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJer6fjOgFGncHrv8GbyId4RjSKe5It7mnfoP9OBkic=;
        b=FViTMACQ8VU3/WIDs0H0/p/FFa20vmVr6xWo6hFM1Oo6yLVWeWuLLyreQnIM2PBUaK
         Qj6iDONHduB9KfrHggb/gkKP8H3YkVxlPyIoF9+QuL4SafK3Br615/orBB1EOQYcE5J9
         mkAt+JCfwcbcgMwMw5K24np3JECRBBAFr62C67dUJPAW/o62pGcrDA9QTeatgRKWKYb5
         ClghiDnNYQCqTzOINZ9YPqrcnZXKKYWk3Pf1T33H9XCcpktja2dXIAALLCSwalhC/F8y
         oL72E6JqOLyE/bMZ2k0Ori2qoSWNT0N+C5o4dgfObcp0Xr4IPQllUZwQOyCKu5dSUQaj
         VWXA==
X-Forwarded-Encrypted: i=1; AJvYcCWH467BK0whhfb7srScJjulfoH0dG8X/en9dQexo79wJb2LWGR4DLkxxnLsaJSBG1JdO5mRKlzt43IGfkTk@lists.linaro.org
X-Gm-Message-State: AOJu0YwcJ3EQMnR2GJ3rbEnVNRTK1mgsJRpnMA4ADbUUKeVSGUjfASk/
	ITCc152xofZvOLucQ2cEGRbydNpBCrwzbKr15qCe0NIQJecpRT8EDDRHkxwKyfSpV29VFJ2GxKY
	ovGNRtmRgU/x4aw==
X-Google-Smtp-Source: AGHT+IFLXwNyuqw3BPAw9IFVtogyMsIvYUR/6UrnN3Mp/J9XKI4f1JlNZHjYttRZ2m57eFxpb3dpvQfVwfvavvA=
X-Received: from pjbpm17.prod.google.com ([2002:a17:90b:3c51:b0:30a:a05c:6e7d])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:3949:b0:2fe:e9c6:689e with SMTP id 98e67ed59e1d1-30e2e5f0626mr297720a91.8.1747154175825;
 Tue, 13 May 2025 09:36:15 -0700 (PDT)
Date: Tue, 13 May 2025 16:35:56 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250513163601.812317-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A991345965
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3_3QjaAkKDb4xnqivgmivksskpi.gsqpmrevs-qq-wmkpmwxw.pmrevs.svk@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	URIBL_BLOCKED(0.00)[mail-pj1-f74.google.com:helo,mail-pj1-f74.google.com:rdns,android.com:url];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3_3QjaAkKDb4xnqivgmivksskpi.gsqpmrevs-qq-wmkpmwxw.pmrevs.svk@flex--tjmercier.bounces.google.com];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.74:from]
X-Rspamd-Action: no action
Message-ID-Hash: Q5WITEBXN4WN7OIV4PJQZ2DSGEDWV5UQ
X-Message-ID-Hash: Q5WITEBXN4WN7OIV4PJQZ2DSGEDWV5UQ
X-MailFrom: 3_3QjaAkKDb4xnqivgmivksskpi.gsqpmrevs-qq-wmkpmwxw.pmrevs.svk@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v6 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q5WITEBXN4WN7OIV4PJQZ2DSGEDWV5UQ/>
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
ZW4gY29kZWQgZG1hYnVmX2l0ZXINCg0KVC5KLiBNZXJjaWVyICg1KToNCiAgZG1hLWJ1ZjogUmVu
YW1lIGRlYnVnZnMgc3ltYm9scw0KICBicGY6IEFkZCBkbWFidWYgaXRlcmF0b3INCiAgYnBmOiBB
ZGQgb3BlbiBjb2RlZCBkbWFidWYgaXRlcmF0b3INCiAgc2VsZnRlc3RzL2JwZjogQWRkIHRlc3Qg
Zm9yIGRtYWJ1Zl9pdGVyDQogIHNlbGZ0ZXN0cy9icGY6IEFkZCB0ZXN0IGZvciBvcGVuIGNvZGVk
IGRtYWJ1Zl9pdGVyDQoNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAg
ICAgICAgfCAgOTggKysrKy0tDQogaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAgICAg
ICAgICAgICAgIHwgICA0ICstDQoga2VybmVsL2JwZi9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAzICsNCiBrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMgICAgICAgICAgICAg
ICAgICAgICAgfCAxNTAgKysrKysrKysrDQoga2VybmVsL2JwZi9oZWxwZXJzLmMgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICA1ICsNCiAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9l
eHBlcmltZW50YWwuaCAgfCAgIDUgKw0KIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9jb25m
aWcgICAgICAgICAgICB8ICAgMyArDQogLi4uL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFi
dWZfaXRlci5jICAgIHwgMjg1ICsrKysrKysrKysrKysrKysrKw0KIC4uLi90ZXN0aW5nL3NlbGZ0
ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIuYyB8ICA5MSArKysrKysNCiA5IGZpbGVzIGNoYW5n
ZWQsIDYyMiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCiBjcmVhdGUgbW9kZSAxMDA2
NDQga2VybmVsL2JwZi9kbWFidWZfaXRlci5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMNCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMN
Cg0KDQpiYXNlLWNvbW1pdDogNDM3NDVkMTFiZmQ5NjgzYWJkZjA4YWQ3YTVjYzQwM2Q2YTlmZmQx
NQ0KLS0gDQoyLjQ5LjAuMTA0NS5nMTcwNjEzZWY0MS1nb29nDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
