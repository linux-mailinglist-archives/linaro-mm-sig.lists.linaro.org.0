Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CB0nNojpCWpavAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 17 May 2026 18:15:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3F25623A7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 17 May 2026 18:15:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 028BC404C6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 17 May 2026 16:15:03 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 981983F79E
	for <linaro-mm-sig@lists.linaro.org>; Sun, 17 May 2026 16:14:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=kK3VDQIl;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1779034483; cv=none;
	d=zohomail.com; s=zohoarc;
	b=M0Xub1lCq4wl/BRc1gcF4eJJCj/eSpnhkULjWNDElqQiyTW0UNbh3QJHtzkqlvUMpazbWCRIaca47D91LHTc4F0McBwD0MneF/WTNjeecN72k/unFO0eWUxDXcjdAx5fjKfY4DkMvac0cTGq9msZG9WAQVivFdoaWmF66X41GaI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1779034483; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=lTQnY3Wob79n+0pHlloPg9VDdqG3m8pLTGa60m2YmDw=;
	b=HvhX71YnZ/4RKA5Sdq19cWUGLngYf6644gM99bCMz8criNBBvaD5uRv0yz/Aj++2ajTvG2AshS/iX5vNsL8Rj8sXJlTK5fHdazgHSga3fvVYXxDa23xrURBuaW4gtoPDRhuZMvQ6k6feL5kdCgaT164ffRKfuVudbFUAUP9Vd8E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779034483;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=lTQnY3Wob79n+0pHlloPg9VDdqG3m8pLTGa60m2YmDw=;
	b=kK3VDQIlpnav25+wGvbaoQB+J+x4Rv83gqmpDLjiPvqqFJeIWS/ppTaCBsQlelAN
	myuvqeE1jQ+rwxSHlJw5p6md+w07WhslZVYbtH3Vk7C0K1VlzybzLvwaYhITUhWhgka
	eKooLOSAEMWOG8qp8KjkA0KRagncd3x+8eoYnuuE=
Received: by mx.zohomail.com with SMTPS id 17790344794755.096580494770819;
	Sun, 17 May 2026 09:14:39 -0700 (PDT)
Message-ID: <afec1199-4889-4d35-964c-4432ec792fa3@collabora.com>
Date: Sun, 17 May 2026 19:14:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260515084030.21986-1-kartikey406@gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20260515084030.21986-1-kartikey406@gmail.com>
X-ZohoMailClient: External
X-Spamd-Bar: ----
Message-ID-Hash: RVQ73LWOJ7SSJBTIXVM7ITW2LKXVOUWX
X-Message-ID-Hash: RVQ73LWOJ7SSJBTIXVM7ITW2LKXVOUWX
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVQ73LWOJ7SSJBTIXVM7ITW2LKXVOUWX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 5C3F25623A7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,redhat.com,chromium.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.884];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On 5/15/26 11:40, Deepanshu Kartikey wrote:
> +int virtio_gpu_array_lock_resv_uninterruptible(struct virtio_gpu_object_array *objs)
> +{
> +	unsigned int i;
> +	int ret = 0;
> +
> +	if (objs->nents == 1) {
> +		dma_resv_lock(objs->objs[0]->resv, NULL);
> +	} else {
> +		ret = drm_gem_lock_reservations(objs->objs, objs->nents,
> +						&objs->ticket);

drm_gem_lock_reservations() is interruptible. Given that only one BO
needs to be locked for the fix, make it
virtio_gpu_lock_one_resv_uninterruptible() and fail with -EINVAL if
objs->nents > 1

-- 
Best regards,
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
