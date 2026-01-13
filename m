Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE46D19DA7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:23:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2AD4140153
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:23:49 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 4FBFD4016C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="B6h4Yy6/";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4775895d69cso38467645e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317695; x=1768922495; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oYku39UephPzH87bV5o7gFOD8YTXLIOvx7ykqyQPsdg=;
        b=B6h4Yy6/Mlr1BC34A/JfSrMlXykId/4/8wcCsDM3O1QK8L7aKyHiVt7/A+5plT54iN
         vi14ofN7zJfVbHnDekTnIAeN2O/eNCzD9vwcdzun63SjnZf+v3izTmXmMCW3bEq4VJIX
         yDybLxBoGLJplAaOJk8Pg7PQdg8RbNfcJldOn9u8zxWl44x3lv2Z9qMXMbtY2Ug2pfw2
         Pl7v9JBSeHqR2mmYydzzdG386xIer09rk+GduICaa1CBx+PtGKBQAYJQWJgsBojgRlne
         i1vZSD0JEWaWN/HAy0Uzl8FsEqsinjCIsxt7hPHUPCYbXui/PWDqJRgEYPEjs9HCd9nC
         Vrhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317695; x=1768922495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oYku39UephPzH87bV5o7gFOD8YTXLIOvx7ykqyQPsdg=;
        b=W49mZA5eT8QgGcIeSdxIH4naM1ZZI3FrP+gMspsbWMWayyJbzMpi1AUX2iWVp0lID8
         lc28HGbd2ySd2n3QypCALNMw37FEaATsYoXNSdbqRlovxqcdcthZa2/SFnZ1gMBXLkEh
         +D+nc8EXHjYtPDWSm1DoIs5CUECRS/MiiEBM7wr+AACI/6TMHMngnre1MKWQah4KFAC/
         pdN6fXniNPKEjHr4iIyqgR4QeFuX3fw8K2hAyZk4M5cUU4xsUhARiqAyYuF6ST2hnruy
         nba5X/tM5C7/gcGufL4pwh0bq3/i9ubOC8T6fMkAJ2KgtIgze45GfsSMyX885FNZmCDK
         2aPA==
X-Forwarded-Encrypted: i=1; AJvYcCWBv7CFA1hPnYjl8V6MUJN+lPngKXI/1AKYiLubzEZALgnYcoV8LDmW49Xn0cE7ZJkQc4J+zqLmswrvVMTA@lists.linaro.org
X-Gm-Message-State: AOJu0YwevJs7htOUyD954RitrLjbMbdiKtL6eYCf6sS6xPMxWvSbKLh3
	eRnX5jwdqvK1CV+ghvTzK6bMfosTUJweP37l9cLivjW8HdMwKHvOAEyC
X-Gm-Gg: AY/fxX65p3axn1KSswoF/EBfbswL22QSx3Xq3+E6cvMH44H8deSporezEYiECTeqDu1
	/em5IHiivcBqI56KQSCHVVVpp3KHqmkd/AtyrO7s8y8m2EAkJBsxp0zDCdg8Y2fzREtbu/I+1BO
	4k2yV41x2aNt7lmKG/sQ4mQsZ4IuytQYbSnFqAAc6+/FrnIEaZDi7adpXPV/Kunh5ft1gSXz9tC
	S3XWsdlfaUCKMKKYeXAwnsp7om3a3k9K2e7jRfWIANH7nMnzmY5gwD4ESmztpZMhjYTUVlSitqb
	vcrXenqqU6aXRh6NqnNEW6E2FfA516bwhUUgFete1AD78iZCBfkiFV5HcWM9fIFYwgIjifLS5Qe
	igPcqI50jgekYUCHy2GF0BQqlIG92xXnk798cqsizY1GoiWyn6kpZ88rrG/WTWFBNcBGmVzSiEb
	0XmvOnU9nd8J8L0TkMjeLkoYE=
X-Google-Smtp-Source: AGHT+IHFYLjOHfL9xnfNlThReRHo1eKo1qhi7F4npLm0SFdgbWx9FFE7CSCYMvhtegli5oewEaJ2jg==
X-Received: by 2002:a05:600c:a03:b0:47a:7fd0:9eea with SMTP id 5b1f17b1804b1-47d8e56625cmr202698065e9.3.1768317695246;
        Tue, 13 Jan 2026 07:21:35 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:34 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:16 +0100
Message-ID: <20260113152125.47380-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4FBFD4016C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[igalia.com:email,amd.com:email,amd.com:mid,mail-wm1-f50.google.com:helo,mail-wm1-f50.google.com:rdns];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: P5N4SQ3WCZXJWNCK7GZFRST3BZ3XF4PV
X-Message-ID-Hash: P5N4SQ3WCZXJWNCK7GZFRST3BZ3XF4PV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/10] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P5N4SQ3WCZXJWNCK7GZFRST3BZ3XF4PV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KDQpTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIGZy
YW1ld29yaydzIGludGVybmFsIGZlbmNlcyBhcyB3ZWxsLg0KDQpBbHNvIHNhdmVzIGFib3V0IDQg
Ynl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KUmV2aWV3ZWQtYnk6IFBoaWxp
cHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMgfCAzICstLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgg
ICB8IDEgLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0p
DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4IGE4YTkwYWNmNGYzNC4uYTcwNzc5
MmI2MDI1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCkBAIC0yNDUsNyArMjQ1LDYg
QEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFp
biwNCiAJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqcHJldl9jaGFpbiA9IHRvX2RtYV9mZW5jZV9j
aGFpbihwcmV2KTsNCiAJdWludDY0X3QgY29udGV4dDsNCiANCi0Jc3Bpbl9sb2NrX2luaXQoJmNo
YWluLT5sb2NrKTsNCiAJcmN1X2Fzc2lnbl9wb2ludGVyKGNoYWluLT5wcmV2LCBwcmV2KTsNCiAJ
Y2hhaW4tPmZlbmNlID0gZmVuY2U7DQogCWNoYWluLT5wcmV2X3NlcW5vID0gMDsNCkBAIC0yNjEs
NyArMjYwLDcgQEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2No
YWluICpjaGFpbiwNCiAJCQlzZXFubyA9IG1heChwcmV2LT5zZXFubywgc2Vxbm8pOw0KIAl9DQog
DQotCWRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1hX2ZlbmNlX2NoYWluX29wcywg
JmNoYWluLT5sb2NrLA0KKwlkbWFfZmVuY2VfaW5pdDY0KCZjaGFpbi0+YmFzZSwgJmRtYV9mZW5j
ZV9jaGFpbl9vcHMsIE5VTEwsDQogCQkJIGNvbnRleHQsIHNlcW5vKTsNCiANCiAJLyoNCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oIGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtY2hhaW4uaA0KaW5kZXggNjhjM2MxZTQxMDE0Li5kMzljZTdhMmU1OTkgMTAwNjQ0
DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1jaGFpbi5oDQpAQCAtNDYsNyArNDYsNiBAQCBzdHJ1Y3QgZG1hX2ZlbmNl
X2NoYWluIHsNCiAJCSAqLw0KIAkJc3RydWN0IGlycV93b3JrIHdvcms7DQogCX07DQotCXNwaW5s
b2NrX3QgbG9jazsNCiB9Ow0KIA0KIA0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
