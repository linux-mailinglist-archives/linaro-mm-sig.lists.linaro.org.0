Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F656BDAD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Mar 2023 22:23:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1ACA3F039
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Mar 2023 21:23:18 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by lists.linaro.org (Postfix) with ESMTPS id 566D13E957
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Mar 2023 21:22:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=dSmvj4c+;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.54 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-17ab3a48158so3694378fac.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Mar 2023 14:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679001778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOLm3MMBl89f2knm/a6i4nSTBzWYSuBzK1XClYHpMY4=;
        b=dSmvj4c+vhVDAQ5Zaj5Yr1DRJ4ybiDnIB4G/ylPHrFHhzAkda0nDV6qsFCC8XDGrq+
         eT863QrK6B/IcIyiPUEC4cRa0GtMAf779fuR3ilmeIz53fivuQJbIrNpTfioj65CSN0H
         EeQrdTv00bm9+R5ydA9cNvPyYFvlb5Cnck9wzX0V9VQxZBd0VDTDVRn3TXCLm3gBmkgv
         aW6YQ2C6DOswHq1c91ga2KdN/R7P23WfSv+rgkxc82u7+5Opfko/BDf2Zi8BEuF7OVQ7
         SKPdGvyXBblcQx6g3Bq8ebiT5ydjjneIU031EZX9bw84Lsn8FMDupirSITw5TxEuucC9
         t07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679001778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZOLm3MMBl89f2knm/a6i4nSTBzWYSuBzK1XClYHpMY4=;
        b=KXj5doGFiARxpz3F7Ao1MTPMAX+fVj6Rpvm1vgM8WTqmBzT2xIVmrwihEOEX2V1jMp
         KbzpVL1iXya8Q8KkLpfAWdXJErG/TZZvbworWAW82Qs5eguBjj5Ea+F1jKz2Q0EeJv1R
         AzuMrliAzul32uo66lg2u4ARkuoK5jU4JdRdKgO6dWbLIUVPZE+C3uj1lzAll0ZgfHNj
         c0Sm10by/kca26uRwyuMAlpWFsWm5okcp1AfrCSclsk+wp3kB5rit0ic+SAyB3R2XY6Z
         VXqD921Vp8qRKX/UP5adT6+u6/b1MEhrBjhJ/QEacR+lhosaY0/qYca2/iuWK5ONhqyr
         srVg==
X-Gm-Message-State: AO0yUKUjZZNKsxSomIDuVrOyKF9+0jM+JbSL7uKxg1H96WICH/aFdhL6
	5qp8m3sLkX6KuXVbGWi4ML7PQduYXI6XYf+r/fs=
X-Google-Smtp-Source: AK7set+faq17A1DBESVulT7MGuaccV0D25PIH9DGSJys9ZSVMyY9sK6nmcgZ9NZNMc3lxfUhJXYBUInIOT3YmaNi5n0=
X-Received: by 2002:a05:6870:6125:b0:177:be3d:2e4d with SMTP id
 s37-20020a056870612500b00177be3d2e4dmr6744075oae.5.1679001778698; Thu, 16 Mar
 2023 14:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230308155322.344664-1-robdclark@gmail.com>
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 16 Mar 2023 14:22:47 -0700
Message-ID: <CAF6AEGs1A-3vHtCCam+LfweBNG76TPrpsn8u+RzZ8=sq18yrNg@mail.gmail.com>
To: dri-devel@lists.freedesktop.org
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 566D13E957
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.54:from];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.984];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 7YVIJNLREZ7MMAEEY4LME25V7LUVT3VO
X-Message-ID-Hash: 7YVIJNLREZ7MMAEEY4LME25V7LUVT3VO
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul <sean@poorly.run>, Stephen Boyd <swboyd@chromium.org>, Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7YVIJNLREZ7MMAEEY4LME25V7LUVT3VO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgOCwgMjAyMyBhdCA3OjUz4oCvQU0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0u
b3JnPg0KPg0KPiBUaGlzIHNlcmllcyBhZGRzIGEgZGVhZGxpbmUgaGludCB0byBmZW5jZXMsIHNv
IHJlYWx0aW1lIGRlYWRsaW5lcw0KPiBzdWNoIGFzIHZibGFuayBjYW4gYmUgY29tbXVuaWNhdGVk
IHRvIHRoZSBmZW5jZSBzaWduYWxsZXIgZm9yIHBvd2VyLw0KPiBmcmVxdWVuY3kgbWFuYWdlbWVu
dCBkZWNpc2lvbnMuDQo+DQo+IFRoaXMgaXMgcGFydGlhbGx5IGluc3BpcmVkIGJ5IGEgdHJpY2sg
aTkxNSBkb2VzLCBidXQgaW1wbGVtZW50ZWQNCj4gdmlhIGRtYS1mZW5jZSBmb3IgYSBjb3VwbGUg
b2YgcmVhc29uczoNCj4NCj4gMSkgVG8gY29udGludWUgdG8gYmUgYWJsZSB0byB1c2UgdGhlIGF0
b21pYyBoZWxwZXJzDQo+IDIpIFRvIHN1cHBvcnQgY2FzZXMgd2hlcmUgZGlzcGxheSBhbmQgZ3B1
IGFyZSBkaWZmZXJlbnQgZHJpdmVycw0KPg0KPiBUaGlzIGl0ZXJhdGlvbiBhZGRzIGEgZG1hLWZl
bmNlIGlvY3RsIHRvIHNldCBhIGRlYWRsaW5lIChib3RoIHRvDQo+IHN1cHBvcnQgaWd0LXRlc3Rz
LCBhbmQgY29tcG9zaXRvcnMgd2hpY2ggZGVsYXkgZGVjaXNpb25zIGFib3V0IHdoaWNoDQo+IGNs
aWVudCBidWZmZXIgdG8gZGlzcGxheSksIGFuZCBhIHN3X3N5bmMgaW9jdGwgdG8gcmVhZCBiYWNr
IHRoZQ0KPiBkZWFkbGluZS4gIElHVCB0ZXN0cyB1dGlsaXppbmcgdGhlc2UgY2FuIGJlIGZvdW5k
IGF0Og0KPg0KPiAgIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9yb2JjbGFyay9pZ3Qt
Z3B1LXRvb2xzLy0vY29tbWl0cy9mZW5jZS1kZWFkbGluZQ0KPg0KDQpqZndpdywgbWVzYSBzaWRl
IG9mIHRoaXM6DQoNCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EvLS9t
ZXJnZV9yZXF1ZXN0cy8yMTk3Mw0KDQpCUiwNCi1SDQoNCj4NCj4gdjE6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvOTMwMzUvDQo+IHYyOiBNb3ZlIGZpbHRlcmluZyBv
dXQgb2YgbGF0ZXIgZGVhZGxpbmVzIHRvIGZlbmNlIGltcGxlbWVudGF0aW9uDQo+ICAgICB0byBh
dm9pZCBpbmNyZWFzaW5nIHRoZSBzaXplIG9mIGRtYV9mZW5jZQ0KPiB2MzogQWRkIHN1cHBvcnQg
aW4gZmVuY2UtYXJyYXkgYW5kIGZlbmNlLWNoYWluOyBBZGQgc29tZSB1YWJpIHRvDQo+ICAgICBz
dXBwb3J0IGlndCB0ZXN0cyBhbmQgdXNlcnNwYWNlIGNvbXBvc2l0b3JzLg0KPiB2NDogUmViYXNl
LCBhZGRyZXNzIHZhcmlvdXMgY29tbWVudHMsIGFuZCBhZGQgc3luY29iaiBkZWFkbGluZQ0KPiAg
ICAgc3VwcG9ydCwgYW5kIHN5bmNfZmlsZSBFUE9MTFBSSSBiYXNlZCBvbiBleHBlcmllbmNlIHdp
dGggcGVyZi8NCj4gICAgIGZyZXEgaXNzdWVzIHdpdGggY2x2ayBjb21wdXRlIHdvcmtsb2FkcyBv
biBpOTE1IChhbnYpDQo+IHY1OiBDbGFyaWZ5IHRoYXQgdGhpcyBpcyBhIGhpbnQgYXMgb3Bwb3Nl
ZCB0byBhIG1vcmUgaGFyZCBkZWFkbGluZQ0KPiAgICAgZ3VhcmFudGVlLCBzd2l0Y2ggdG8gdXNp
bmcgdTY0IG5zIHZhbHVlcyBpbiBVQUJJIChzdGlsbCBhYnNvbHV0ZQ0KPiAgICAgQ0xPQ0tfTU9O
T1RPTklDIHZhbHVlcyksIGRyb3Agc3luY29iaiByZWxhdGVkIGNhcCBhbmQgZHJpdmVyDQo+ICAg
ICBmZWF0dXJlIGZsYWcgaW4gZmF2b3Igb2YgYWxsb3dpbmcgY291bnRfaGFuZGxlcz09MCBmb3Ig
cHJvYmluZw0KPiAgICAga2VybmVsIHN1cHBvcnQuDQo+IHY2OiBSZS13b3JrIHZibGFuayBoZWxw
ZXIgdG8gY2FsY3VsYXRlIHRpbWUgb2YgX3N0YXJ0XyBvZiB2YmxhbmssDQo+ICAgICBhbmQgd29y
ayBjb3JyZWN0bHkgaWYgdGhlIGxhc3QgdmJsYW5rIGV2ZW50IHdhcyBtb3JlIHRoYW4gYQ0KPiAg
ICAgZnJhbWUgYWdvLiAgQWRkIChtb3N0bHkgdW5yZWxhdGVkKSBkcm0vbXNtIHBhdGNoIHdoaWNo
IGFsc28NCj4gICAgIHVzZXMgdGhlIHZibGFuayBoZWxwZXIuICBVc2UgZG1hX2ZlbmNlX2NoYWlu
X2NvbnRhaW5lZCgpLiAgTW9yZQ0KPiAgICAgdmVyYm9zZSBzeW5jb2JqIFVBQkkgY29tbWVudHMu
ICBEcm9wIERNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQuDQo+IHY3OiBGaXgga2J1aWxk
IGNvbXBsYWludHMgYWJvdXQgdmJsYW5rIGhlbHBlci4gIEFkZCBtb3JlIGRvY3MuDQo+IHY4OiBB
ZGQgcGF0Y2ggdG8gc3VyZmFjZSBzeW5jX2ZpbGUgVUFQSSwgYW5kIG1vcmUgZG9jcyB1cGRhdGVz
Lg0KPiB2OTogRHJvcCAoRSlQT0xMUFJJIHN1cHBvcnQuLiBJIHN0aWxsIGxpa2UgaXQsIGJ1dCBu
b3QgZXNzZW50aWFsIGFuZA0KPiAgICAgaXQgY2FuIGFsd2F5cyBiZSByZXZpdmVkIGxhdGVyLiAg
Rml4IGRvYyBidWlsZCB3YXJuaW5nLg0KPiB2MTA6IFVwZGF0ZSAxMS8xNSB0byBoYW5kbGUgbXVs
dGlwbGUgQ1JUQ3MNCj4NCj4gUm9iIENsYXJrICgxNSk6DQo+ICAgZG1hLWJ1Zi9kbWEtZmVuY2U6
IEFkZCBkZWFkbGluZSBhd2FyZW5lc3MNCj4gICBkbWEtYnVmL2ZlbmNlLWFycmF5OiBBZGQgZmVu
Y2UgZGVhZGxpbmUgc3VwcG9ydA0KPiAgIGRtYS1idWYvZmVuY2UtY2hhaW46IEFkZCBmZW5jZSBk
ZWFkbGluZSBzdXBwb3J0DQo+ICAgZG1hLWJ1Zi9kbWEtcmVzdjogQWRkIGEgd2F5IHRvIHNldCBm
ZW5jZSBkZWFkbGluZQ0KPiAgIGRtYS1idWYvc3luY19maWxlOiBTdXJmYWNlIHN5bmMtZmlsZSB1
QUJJDQo+ICAgZG1hLWJ1Zi9zeW5jX2ZpbGU6IEFkZCBTRVRfREVBRExJTkUgaW9jdGwNCj4gICBk
bWEtYnVmL3N3X3N5bmM6IEFkZCBmZW5jZSBkZWFkbGluZSBzdXBwb3J0DQo+ICAgZHJtL3NjaGVk
dWxlcjogQWRkIGZlbmNlIGRlYWRsaW5lIHN1cHBvcnQNCj4gICBkcm0vc3luY29iajogQWRkIGRl
YWRsaW5lIHN1cHBvcnQgZm9yIHN5bmNvYmogd2FpdHMNCj4gICBkcm0vdmJsYW5rOiBBZGQgaGVs
cGVyIHRvIGdldCBuZXh0IHZibGFuayB0aW1lDQo+ICAgZHJtL2F0b21pYy1oZWxwZXI6IFNldCBm
ZW5jZSBkZWFkbGluZSBmb3IgdmJsYW5rDQo+ICAgZHJtL21zbTogQWRkIGRlYWRsaW5lIGJhc2Vk
IGJvb3N0IHN1cHBvcnQNCj4gICBkcm0vbXNtOiBBZGQgd2FpdC1ib29zdCBzdXBwb3J0DQo+ICAg
ZHJtL21zbS9hdG9taWM6IFN3aXRjaCB0byB2Ymxhbmtfc3RhcnQgaGVscGVyDQo+ICAgZHJtL2k5
MTU6IEFkZCBkZWFkbGluZSBiYXNlZCBib29zdCBzdXBwb3J0DQo+DQo+IFJvYiBDbGFyayAoMTUp
Og0KPiAgIGRtYS1idWYvZG1hLWZlbmNlOiBBZGQgZGVhZGxpbmUgYXdhcmVuZXNzDQo+ICAgZG1h
LWJ1Zi9mZW5jZS1hcnJheTogQWRkIGZlbmNlIGRlYWRsaW5lIHN1cHBvcnQNCj4gICBkbWEtYnVm
L2ZlbmNlLWNoYWluOiBBZGQgZmVuY2UgZGVhZGxpbmUgc3VwcG9ydA0KPiAgIGRtYS1idWYvZG1h
LXJlc3Y6IEFkZCBhIHdheSB0byBzZXQgZmVuY2UgZGVhZGxpbmUNCj4gICBkbWEtYnVmL3N5bmNf
ZmlsZTogU3VyZmFjZSBzeW5jLWZpbGUgdUFCSQ0KPiAgIGRtYS1idWYvc3luY19maWxlOiBBZGQg
U0VUX0RFQURMSU5FIGlvY3RsDQo+ICAgZG1hLWJ1Zi9zd19zeW5jOiBBZGQgZmVuY2UgZGVhZGxp
bmUgc3VwcG9ydA0KPiAgIGRybS9zY2hlZHVsZXI6IEFkZCBmZW5jZSBkZWFkbGluZSBzdXBwb3J0
DQo+ICAgZHJtL3N5bmNvYmo6IEFkZCBkZWFkbGluZSBzdXBwb3J0IGZvciBzeW5jb2JqIHdhaXRz
DQo+ICAgZHJtL3ZibGFuazogQWRkIGhlbHBlciB0byBnZXQgbmV4dCB2YmxhbmsgdGltZQ0KPiAg
IGRybS9hdG9taWMtaGVscGVyOiBTZXQgZmVuY2UgZGVhZGxpbmUgZm9yIHZibGFuaw0KPiAgIGRy
bS9tc206IEFkZCBkZWFkbGluZSBiYXNlZCBib29zdCBzdXBwb3J0DQo+ICAgZHJtL21zbTogQWRk
IHdhaXQtYm9vc3Qgc3VwcG9ydA0KPiAgIGRybS9tc20vYXRvbWljOiBTd2l0Y2ggdG8gdmJsYW5r
X3N0YXJ0IGhlbHBlcg0KPiAgIGRybS9pOTE1OiBBZGQgZGVhZGxpbmUgYmFzZWQgYm9vc3Qgc3Vw
cG9ydA0KPg0KPiAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0ICAgIHwgMTYg
KysrKy0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyAgICAgICB8IDExICsr
KysNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyAgICAgICB8IDEyICsrKysN
Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyAgICAgICAgICAgICB8IDYwICsrKysrKysr
KysrKysrKysrKw0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICAgIHwg
MjIgKysrKysrKw0KPiAgZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyAgICAgICAgICAgICAgIHwg
ODEgKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVi
dWcuaCAgICAgICAgICAgIHwgIDIgKw0KPiAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jICAg
ICAgICAgICAgIHwgMTkgKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxw
ZXIuYyAgICAgfCAzNyArKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2Jq
LmMgICAgICAgICAgIHwgNjQgKysrKysrKysrKysrKysrLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2RybV92YmxhbmsuYyAgICAgICAgICAgIHwgNTMgKysrKysrKysrKysrKy0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgIHwgMjAgKysrKysrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfa21zLmMgfCAxNSAtLS0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fYXRvbWljLmMgICAgICAgIHwgIDggKystDQo+ICBkcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9kcnYuYyAgICAgICAgICAgfCAxMiArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9mZW5jZS5jICAgICAgICAgfCA3NCArKysrKysrKysrKysrKysrKysrKysrDQo+ICBk
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5oICAgICAgICAgfCAyMCArKysrKysNCj4gIGRy
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAgICAgICB8ICA1ICsrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9rbXMuaCAgICAgICAgICAgfCAgOCAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDQ2ICsrKysrKysrKysrKysrDQo+ICBkcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyAgfCAgMiArLQ0KPiAgaW5jbHVkZS9k
cm0vZHJtX3ZibGFuay5oICAgICAgICAgICAgICAgIHwgIDEgKw0KPiAgaW5jbHVkZS9kcm0vZ3B1
X3NjaGVkdWxlci5oICAgICAgICAgICAgIHwgMTcgKysrKysrDQo+ICBpbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oICAgICAgICAgICAgICAgfCAyMiArKysrKysrDQo+ICBpbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggICAgICAgICAgICAgICAgfCAgMiArDQo+ICBpbmNsdWRlL3VhcGkvZHJtL2RybS5o
ICAgICAgICAgICAgICAgICAgfCAxNyArKysrKysNCj4gIGluY2x1ZGUvdWFwaS9kcm0vbXNtX2Ry
bS5oICAgICAgICAgICAgICB8IDE0ICsrKystDQo+ICBpbmNsdWRlL3VhcGkvbGludXgvc3luY19m
aWxlLmggICAgICAgICAgfCA1OSArKysrKysrKysrKy0tLS0tLS0NCj4gIDI4IGZpbGVzIGNoYW5n
ZWQsIDY0MCBpbnNlcnRpb25zKCspLCA3OSBkZWxldGlvbnMoLSkNCj4NCj4gLS0NCj4gMi4zOS4y
DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
