Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F8C6F55C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:16:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A307C402AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:16:49 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by lists.linaro.org (Postfix) with ESMTPS id 841553E96E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:10:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=BH1v+IPm;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.160.181 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f181.google.com with SMTP id fg9so10690365qtb.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863036; x=1684455036;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UyEq/Tf7QLl6d9zXXGWl73RQz/CxSbYGosQOapTIRD0=;
        b=BH1v+IPmPbOUXgkeCbLN1FEEOG8L7DbpXaa4IdtDc4H6TO2Lca10KggzIwAdfHnmCp
         Eocn2M2Lfyi3QZuJjXa/dFdVW6omCj29iNF9dPmQiIVslt7FwduTSEUdGUw1npL3CLrf
         BwJT+jPH6JQAD6eNPL4fzqRQmXIu8mfEbbDwbL78H8T4J7WVoYJ2QHdJnxPusyi5tO50
         H0sHqEht4NlZ7NJgYh0HgX3Yv5o6+dIw0/3M7zhc5ml6qWV35SPrZkEpJINSaVqvbGZf
         UZYxT+JhC4tE0oRxPAJEsOcKMbrODHaquRV0pSpuzXPChKgMscNVNrFt+gG7dGfXuSjb
         1xSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863036; x=1684455036;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UyEq/Tf7QLl6d9zXXGWl73RQz/CxSbYGosQOapTIRD0=;
        b=N3wdw7AVITa53ay7gsMuPABTVlVv7628xBnOHreMxirkWra19T+jJcq2exp6BTlLJ0
         YT2NY57fglPGJQ3apU3q086OUYLlhezkH0J/gPRi7zZFMXgq5Nex/IQKLk5+6Hw/Z+Qk
         T9kL+T5mUjUXoxzF/0tKchcMhoWn5ng0Oyef842rY+csjBwtvj5gMU1V6OSNwyZof+dl
         mL8Rd5ReoJO97ZAMe168Dma/d+/Xr+vHTXNwN4mIfObWHI1yfSSHjsGglAQjPJcf/IU8
         Oy+42w4kSTRPkdhnKiagq4nLscVGaJSLm8EKkxhI/zcnGLvCBmJSf/1B3zjbDeZ6eA+Z
         UeoQ==
X-Gm-Message-State: AAQBX9dPMXtbvlaFRRrA9SyNUZEEkgMdRVGM91BW/tvjbG4QTeSavqTu
	eJF8GBY9kXUwcF6gDV8uDGHZI5d6602qGQ==
X-Google-Smtp-Source: AKy350bik89bg3Bh7J8Q8dUtjUHyetGtf2M9+Xo42hsDtxUodGDcOq+h/v/8FR0+uue+NbSiL3NveQ==
X-Received: by 2002:a05:622a:3cf:b0:3ec:47bb:9767 with SMTP id k15-20020a05622a03cf00b003ec47bb9767mr3211241qtx.20.1681863036044;
        Tue, 18 Apr 2023 17:10:36 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d14-20020a37680e000000b0074d1b6a8187sm2639035qkc.130.2023.04.18.17.10.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2023 17:10:35 -0700 (PDT)
From: Justin Chen <justinpopo6@gmail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
Date: Tue, 18 Apr 2023 17:10:14 -0700
Message-Id: <1681863018-28006-3-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.181:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 841553E96E
X-Spamd-Bar: -
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CXCA24VEZ67PI5T2VKFO5SQF6ETW6HY3
X-Message-ID-Hash: CXCA24VEZ67PI5T2VKFO5SQF6ETW6HY3
X-Mailman-Approved-At: Wed, 03 May 2023 10:15:29 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, Justin Chen <justinpopo6@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 2/6] dt-bindings: net: brcm,unimac-mdio: Add asp-v2.0
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CXCA24VEZ67PI5T2VKFO5SQF6ETW6HY3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Justin Chen <justin.chen@broadcom.com>

The ASP 2.0 Ethernet controller uses a brcm unimac.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
index 0be426ee1e44..6684810fcbf0 100644
--- a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
@@ -22,6 +22,8 @@ properties:
       - brcm,genet-mdio-v3
       - brcm,genet-mdio-v4
       - brcm,genet-mdio-v5
+      - brcm,asp-v2.0-mdio
+      - brcm,asp-v2.1-mdio
       - brcm,unimac-mdio
 
   reg:
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
