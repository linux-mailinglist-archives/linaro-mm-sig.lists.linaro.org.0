Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33679AAD1E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 02:10:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03E1B463E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 00:10:57 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 1A8C4446D1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 00:10:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=twmcRwgw;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3AqUaaAkKDf0yorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3AqUaaAkKDf0yorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2ff798e8c3bso5512176a91.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 May 2025 17:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746576642; x=1747181442; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XbM0hT4nN9Qi5ds4e0j9GLdbgAxkWG3cIrhqKGc4+Co=;
        b=twmcRwgw7hbsZHwmNe2ws+8D83DbTGpJlQ6JZIg8VwCGPwJXyqKEXPnKGvjfWhKO5K
         9DyY1nIdvDQWMM6TOLiqPx+le/OwhrJzToppcM3M3XESIjEkOCKxrMr2W+RQ/mFdHp4l
         vcJwv0bt+lifsde5jSS9YwLLdGtX1wv4WP53lstqHGUD0F5V4f3WvHoLTP+vpJQeReLM
         GLYVMrLKY9y64jwclkWiPQAndWC0TKY2YpY7fJvayh+EifdhULqoHH6TOeWwUnap6IWY
         qvXxpVr+Ir+oc/u51q9PjW5EWwH6HbDxM6QT4LAQlMYJUp8xDjpTY8jH0bH0geZDgN1l
         +qpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746576642; x=1747181442;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XbM0hT4nN9Qi5ds4e0j9GLdbgAxkWG3cIrhqKGc4+Co=;
        b=utj9FKOGa5rCq3saAEF5VpgGtDvPDg/JndGeglrotP9JKyAf72ECn00YicmfFvhfur
         Ei9AG6TkW6IqsqKVX0jjrIqIUcwa53jq8wlfNhCVaC7i4tK6N+KY7xa7/eZac6s+4LWB
         qfPREAsbkf/HKbnrATBAsXq43oVAy9ygWvfiIyP6VEUI3gyFWtOvgQ50D+3eNdVqSIol
         1pYSI+7grgcLZstjkKxaozqy876cLmdPRMkl71Ad6uDhbka4UNeyPR4hTQ3M3lRpR7t+
         w0SzOsapqeg7tLsURWQizU1CcZJPz5ICJ/qhyocP+wfXpwFqXwje5SpiX/3jIzg77mxj
         VKkw==
X-Forwarded-Encrypted: i=1; AJvYcCWcxC0d/vUBENW2z2WfQPzW+0GVNgJQvNBf6i11y8swLUesm4cPlxb0oifpW3ESKHY9bOZbkujBRVrjXOxd@lists.linaro.org
X-Gm-Message-State: AOJu0Yz+txICwXV16DBkgSJlV16UIv6OJWpuS6Yvn4lvzYaxPMKgvJJ+
	MEQW9gEBrKV4md8VihOyBdDaelX5P3NS9V93wsH6FpCkXnQ455YVQmlmYRlWuTlrqfXqMLteWLf
	FkicvhSt086vyqA==
X-Google-Smtp-Source: AGHT+IGgh9HyAs9Nj/w00VjUmiwsbbsyaNDbuDxCtSFIr9y5AQvyC41+3cohLwHox+GxYYqlbWOuGxl6mDGD8Sc=
X-Received: from pjbpt3.prod.google.com ([2002:a17:90b:3d03:b0:2fa:15aa:4d1e])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:3d8c:b0:2ee:e317:69ab with SMTP id 98e67ed59e1d1-30aabf6f73emr2662572a91.0.1746576642184;
 Tue, 06 May 2025 17:10:42 -0700 (PDT)
Date: Wed,  7 May 2025 00:10:31 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250507001036.2278781-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, song@kernel.org
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1A8C4446D1
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3AqUaaAkKDf0yorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com];
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
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3AqUaaAkKDf0yorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: SKLZMSSZWEXRIPRH2DGN53BCL7PSQQVV
X-Message-ID-Hash: SKLZMSSZWEXRIPRH2DGN53BCL7PSQQVV
X-MailFrom: 3AqUaaAkKDf0yorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v3 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SKLZMSSZWEXRIPRH2DGN53BCL7PSQQVV/>
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
TUEtQlVGIHN0YXRpc3RpY3MNCg0KVC5KLiBNZXJjaWVyICg1KToNCiAgZG1hLWJ1ZjogUmVuYW1l
IGRlYnVnZnMgc3ltYm9scw0KICBicGY6IEFkZCBkbWFidWYgaXRlcmF0b3INCiAgYnBmOiBBZGQg
b3BlbiBjb2RlZCBkbWFidWYgaXRlcmF0b3INCiAgc2VsZnRlc3RzL2JwZjogQWRkIHRlc3QgZm9y
IGRtYWJ1Zl9pdGVyDQogIHNlbGZ0ZXN0cy9icGY6IEFkZCB0ZXN0IGZvciBvcGVuIGNvZGVkIGRt
YWJ1Zl9pdGVyDQoNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAg
ICAgfCAgOTQgKysrKystLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgNSArLQ0KIGtlcm5lbC9icGYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMyArDQoga2VybmVsL2JwZi9kbWFidWZfaXRlci5jICAgICAgICAgICAgICAg
ICAgICAgIHwgMTQ5ICsrKysrKysrKysNCiBrZXJuZWwvYnBmL2hlbHBlcnMuYyAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIDUgKw0KIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBmX2V4
cGVyaW1lbnRhbC5oICB8ICAgNSArDQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL2NvbmZp
ZyAgICAgICAgICAgIHwgICAzICsNCiAuLi4vc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1
Zl9pdGVyLmMgICAgfCAyNTggKysrKysrKysrKysrKysrKysrDQogLi4uL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5jIHwgIDkxICsrKysrKw0KIDkgZmlsZXMgY2hhbmdl
ZCwgNTkxIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0
NCBrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIuYw0KIGNyZWF0ZSBtb2Rl
IDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIuYw0K
DQoNCmJhc2UtY29tbWl0OiA0Mzc0NWQxMWJmZDk2ODNhYmRmMDhhZDdhNWNjNDAzZDZhOWZmZDE1
DQotLSANCjIuNDkuMC4xMDQ1LmcxNzA2MTNlZjQxLWdvb2cNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
