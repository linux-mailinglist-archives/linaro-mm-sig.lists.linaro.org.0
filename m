Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIkTCMU1l2kCvwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:09:41 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF0B1608AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:09:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AA5C401DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 16:09:39 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 180A73FDB1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 16:08:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=d+1+EW8Y;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43621bf67ceso792299f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 08:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771517311; x=1772122111; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+0DKumpevcDFDLkmeoW4poNM+E3SoCT3N9QX32xG/4=;
        b=d+1+EW8Ya4WB8zTkrEglCZzz3v0ueEWr3/756aa09UN5bQCWIJqN5uRzEUKe5jIjjL
         JuhRp9sQ1ADu9OrcetghNzpLSA+ZDjG0f1VPNXe/+IejMq6PR+ye/M5aW+0zNBB/gkGL
         uk6pHBHjDILCtiX+hzYKrviSrN4DEZaCFHtraaC5+CnkPCRi/+4HrVOP9GWBKFyCGd+w
         zccSFOG8SXqmEiWlQpBbM+IBPyFKkRu6hmKzcVvlWC+DhiAr6R/PY+xmnvBS0ifE/w/Y
         XRElF9XZkNr0+XpDrhpkI5FGSUZlSeuLbZ3xw1e1rYMymHbXZxpHbmcwtY7GE8fto6R4
         1INQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517311; x=1772122111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/+0DKumpevcDFDLkmeoW4poNM+E3SoCT3N9QX32xG/4=;
        b=EOWW7IuEe277sOXNFYQ3C2tjS6qDYOe7tB1fuY+KPkQVQ4/5gXcZsMqNGZ8por1P/c
         DVV+Fc3kAZPMyvPDu13pV0bpckvSJb3SZEZo/RiOcpYUNC8MGt2iLwXZUqiaB7BjAsf3
         VkEohIpVWviBu1Siv2tvl5rygukj4/LQUH6RbbkPlqCjherW0t69FPbhqMXYqpbhtcf2
         w+BaTiOhHzM/S5dCZZ9AcJMgh1VLbJ75lcymXijo4HwgPxqUAvmN1BX5vJnPcpiSCvp+
         HLHZlpLQpb4o1kydLfSaU/SzZtwtpl3qDq5gDmv9xUCrE1pxkyRYrrh4Die13ikJUg1w
         CIAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwdLM7k+aK25wHr2eGYUebbw3DwBhbbQMovBacLEy8Z+0pEa/kpORH/+IrMlDKUM+xPnVE1oI7uqNxm+5D@lists.linaro.org
X-Gm-Message-State: AOJu0YyPW6CchVUp9tfjx7ae5dLEWXDOwNvRsE+/pA5abUeLHP2T3Qk7
	1ZvBCdWs9wbbaVO+4bVYt7ge34z6Yh4gikGkQGnZpoblZ93bKA60o1KP
X-Gm-Gg: AZuq6aLXmKpdobhRBho2VIb64FK7qQfk8M4LnrlYvc3VinV51qkLcaKt3pM7zjLeajf
	i7IsQjvykDKBcNvC+IVTbQ4A87Bq3ak9thwWbjwxzOnozvcMkWf+8cwW5bAECulJzgDkYRTrYtr
	TrN1GnxhEr5GAvD57QwPIrW+QCpDGAF8msgbsgJhfoiUHdcvuQsYYk7IskkPfsJ05lbAolo/X5R
	AgliC9/cF3HVYz30cc+uXnveX9TUWyL+sEqOu/12TMOw99/l+ODS1cMLgLtu25jCPW3OoWlZSE5
	/4dOY9B+yxZygKSV8YkBdvuYjmMBYZTGHQVV+rGjS7mazyvhpx9Lmpu/1BTnLc+NBmgDUL2tAOt
	nbAwVTb0ibLh6n0XM4Cq+OgBLPjh3TlD9+pZZii16p0eHpBW8uNuW5LSEhZNvVpUAsnY2+Ma7P9
	y8korgJElNAUPXiNZkx7Ed8sEAxeNGsIoETjB6
X-Received: by 2002:a5d:5d89:0:b0:437:9d2f:8bf1 with SMTP id ffacd0b85a97d-4379db8cdf6mr37041945f8f.38.1771517310937;
        Thu, 19 Feb 2026 08:08:30 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1503:b900:9c42:5977:662a:d02d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm54580031f8f.28.2026.02.19.08.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:08:30 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 19 Feb 2026 17:07:09 +0100
Message-ID: <20260219160822.1529-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219160822.1529-1-christian.koenig@amd.com>
References: <20260219160822.1529-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: W2TX5337QD4VUUFRGIZBVXIBUN7ZFRSP
X-Message-ID-Hash: W2TX5337QD4VUUFRGIZBVXIBUN7ZFRSP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/8] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W2TX5337QD4VUUFRGIZBVXIBUN7ZFRSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,igalia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: ADF0B1608AC
X-Rspamd-Action: no action

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UNCmltcGxlbWVudGF0aW9ucy4NCg0KU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBm
cmFtZXdvcmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNCnYyOiBkcm9wIHVubmVjZXNzYXJ5
IGNoYW5nZXMNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpZ2FsaWEuY29tPg0KUmV2aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5l
bC5vcmc+DQpSZXZpZXdlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29s
bGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDEyICsrLS0t
LS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCAzOWYwYTRkMDhhMmQuLjEzM2NiOTAzM2IyYyAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jDQpAQCAtMjQsNyArMjQsNiBAQCBFWFBPUlRfVFJBQ0VQT0lOVF9TWU1C
T0woZG1hX2ZlbmNlX2VtaXQpOw0KIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2Vf
ZW5hYmxlX3NpZ25hbCk7DQogRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWdu
YWxlZCk7DQogDQotc3RhdGljIERFRklORV9TUElOTE9DSyhkbWFfZmVuY2Vfc3R1Yl9sb2NrKTsN
CiBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSBkbWFfZmVuY2Vfc3R1YjsNCiANCiAvKg0KQEAgLTEy
MywxMiArMTIyLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5j
ZV9zdHViX29wcyA9IHsNCiANCiBzdGF0aWMgaW50IF9faW5pdCBkbWFfZmVuY2VfaW5pdF9zdHVi
KHZvaWQpDQogew0KLQlkbWFfZmVuY2VfaW5pdCgmZG1hX2ZlbmNlX3N0dWIsICZkbWFfZmVuY2Vf
c3R1Yl9vcHMsDQotCQkgICAgICAgJmRtYV9mZW5jZV9zdHViX2xvY2ssIDAsIDApOw0KLQ0KKwlk
bWFfZmVuY2VfaW5pdCgmZG1hX2ZlbmNlX3N0dWIsICZkbWFfZmVuY2Vfc3R1Yl9vcHMsIE5VTEws
IDAsIDApOw0KIAlzZXRfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KIAkJ
JmRtYV9mZW5jZV9zdHViLmZsYWdzKTsNCi0NCiAJZG1hX2ZlbmNlX3NpZ25hbCgmZG1hX2ZlbmNl
X3N0dWIpOw0KIAlyZXR1cm4gMDsNCiB9DQpAQCAtMTYwLDExICsxNTYsNyBAQCBzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKGt0aW1lX3QgdGltZXN0YW1w
KQ0KIAlpZiAoZmVuY2UgPT0gTlVMTCkNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlkbWFfZmVuY2Vf
aW5pdChmZW5jZSwNCi0JCSAgICAgICAmZG1hX2ZlbmNlX3N0dWJfb3BzLA0KLQkJICAgICAgICZk
bWFfZmVuY2Vfc3R1Yl9sb2NrLA0KLQkJICAgICAgIDAsIDApOw0KLQ0KKwlkbWFfZmVuY2VfaW5p
dChmZW5jZSwgJmRtYV9mZW5jZV9zdHViX29wcywgTlVMTCwgMCwgMCk7DQogCXNldF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsDQogCQkmZmVuY2UtPmZsYWdzKTsNCiANCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
