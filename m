Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2F3734BEF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jun 2023 08:54:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 533B343BD7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jun 2023 06:54:58 +0000 (UTC)
Received: from mail.208.org (unknown [183.242.55.162])
	by lists.linaro.org (Postfix) with ESMTPS id 3632D3EC14
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jun 2023 14:54:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none ("invalid DKIM record") header.d=208.org header.s=dkim header.b="F XPLeXB";
	spf=pass (lists.linaro.org: domain of zhumao001@208suo.com designates 183.242.55.162 as permitted sender) smtp.mailfrom=zhumao001@208suo.com;
	dmarc=none
Received: from mail.208.org (email.208.org [127.0.0.1])
	by mail.208.org (Postfix) with ESMTP id 4QkbXD5n4szBJTDG
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jun 2023 22:54:36 +0800 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=208.org; h=
	content-type:message-id:user-agent:references:in-reply-to
	:subject:to:from:date:mime-version; s=dkim; t=1687100076; x=
	1689692077; bh=Ycho+bN0cSAaFhdFtGizO8c/EFquN3+WpUviiSP5YR8=; b=F
	XPLeXBJWSqqIFstR0Ml+DtnxWTCvt8+m+az5wy7SbjOK1ylQkI/L3me/JCn/HFdE
	vas70yi+BmShFLXHLSoDDdteQUSx7rEiLEVCHDx9SSyT7veTBQ+IBhSC8Y3uMFG5
	TfLhOgfpEeIvRB/HzfRo1LKZqY4T25EaQVaUo5QVzrXpAsV5r+BAkL+e+DyTRdm5
	SoTmpclXZXpfhP0g1KMcYpnnUqMNbl/y+Sjmp9ELWYWF4OLp3pSpufCabem3hZA6
	UQKObqJTpBpWqwGt3qfQwLYePO1cDcFuIUYU28XWhIWARFGQQgIXCmIalVQB4QLH
	U7UcTIJTr72YPT6QfKUAA==
X-Virus-Scanned: amavisd-new at mail.208.org
Received: from mail.208.org ([127.0.0.1])
	by mail.208.org (mail.208.org [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id SgwYb1W_flCi for <linaro-mm-sig@lists.linaro.org>;
	Sun, 18 Jun 2023 22:54:36 +0800 (CST)
Received: from localhost (email.208.org [127.0.0.1])
	by mail.208.org (Postfix) with ESMTPSA id 4QkbXD111szBJJDJ;
	Sun, 18 Jun 2023 22:54:36 +0800 (CST)
MIME-Version: 1.0
Date: Sun, 18 Jun 2023 22:54:36 +0800
From: zhumao001@208suo.com
To: robdclark@gmail.com, quic_abhinavk@quicinc.com,
 dmitry.baryshkov@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com, sean@poorly.run
In-Reply-To: <20230618143813.15142-4-dengshaomin@cdjrlc.com>
References: <20230618143813.15142-1-dengshaomin@cdjrlc.com>
 <20230618143813.15142-4-dengshaomin@cdjrlc.com>
User-Agent: Roundcube Webmail
Message-ID: <610b47a2989976b9dae162ecc55ddc85@208suo.com>
X-Sender: zhumao001@208suo.com
X-Spamd-Result: default: False [0.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RDNS_NONE(1.00)[];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	NEURAL_SPAM(0.00)[0.612];
	FREEMAIL_TO(0.00)[gmail.com,quicinc.com,linaro.org,ffwll.ch,amd.com,poorly.run];
	ASN(0.00)[asn:56048, ipnet:183.242.0.0/15, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	R_DKIM_PERMFAIL(0.00)[208.org:s=dkim];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[208.org:~];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[208suo.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3632D3EC14
X-Spamd-Bar: /
X-MailFrom: zhumao001@208suo.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3E67XW5AZAWL4HOR4LCEKGKC5IXYCXW3
X-Message-ID-Hash: 3E67XW5AZAWL4HOR4LCEKGKC5IXYCXW3
X-Mailman-Approved-At: Mon, 19 Jun 2023 06:54:44 +0000
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3E67XW5AZAWL4HOR4LCEKGKC5IXYCXW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3870149332827419272=="

--===============3870149332827419272==
Content-Type: multipart/alternative;
 boundary="=_bd33facbe9810b6ba40fa09dc0a42d93"

--=_bd33facbe9810b6ba40fa09dc0a42d93
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed


Fix typo in comment of msm_gem.c.

Signed-off-by: Zhu Mao <zhumao001@208suo.com>
---
  drivers/gpu/drm/msm/msm_gem.c | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c 
b/drivers/gpu/drm/msm/msm_gem.c
index 20cfd86d2b32..ef81074416af 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -503,8 +503,8 @@ void msm_gem_unpin_locked(struct drm_gem_object 
*obj)

  /* Special unpin path for use in fence-signaling path, avoiding the 
need
   * to hold the obj lock by only depending on things that a protected by
- * the LRU lock.  In particular we know that that we already have 
backing
- * and and that the object's dma_resv has the fence for the current
+ * the LRU lock.  In particular we know that we already have backing
+ * and that the object's dma_resv has the fence for the current
   * submit/job which will prevent us racing against page eviction.
   */
  void msm_gem_unpin_active(struct drm_gem_object *obj)
--=_bd33facbe9810b6ba40fa09dc0a42d93
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 12pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Fix typo in comment of msm_gem.c.<br /><br />Signed-off-by: Zhu Mao &lt;zhu=
mao001@208suo.com&gt;<br />---<br />&nbsp;drivers/gpu/drm/msm/msm_gem.c | 4=
 ++--<br />&nbsp;1 file changed, 2 insertions(+), 2 deletions(-)<br /><br /=
>diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c=
<br />index 20cfd86d2b32..ef81074416af 100644<br />--- a/drivers/gpu/drm/ms=
m/msm_gem.c<br />+++ b/drivers/gpu/drm/msm/msm_gem.c<br />@@ -503,8 +503,8 =
@@ void msm_gem_unpin_locked(struct drm_gem_object *obj)<br />&nbsp;<br />&=
nbsp;/* Special unpin path for use in fence-signaling path, avoiding the ne=
ed<br />&nbsp;&nbsp;* to hold the obj lock by only depending on things that=
 a protected by<br />- * the LRU lock. &nbsp;In particular we know that tha=
t we already have backing<br />- * and and that the object's dma_resv has t=
he fence for the current<br />+ * the LRU lock. &nbsp;In particular we know=
 that we already have backing<br />+ * and that the object's dma_resv has t=
he fence for the current<br />&nbsp;&nbsp;* submit/job which will prevent u=
s racing against page eviction.<br />&nbsp;&nbsp;*/<br />&nbsp;void msm_gem=
_unpin_active(struct drm_gem_object *obj)</div>

</body></html>

--=_bd33facbe9810b6ba40fa09dc0a42d93--

--===============3870149332827419272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3870149332827419272==--
