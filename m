Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6458797EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Mar 2024 16:47:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 551634479D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Mar 2024 15:47:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id CAA9043E4F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Mar 2024 15:47:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=XuV2fcF1;
	spf=pass (lists.linaro.org: domain of fmartine@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=fmartine@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1710258466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C03ZzqydLhwftyx/8OV079lEb5JdweH7XCPi8d8sS0U=;
	b=XuV2fcF119Kad+YeTvuVmJGIgT6GxZQW05egqI4dRsvYGKxBpoT/oq4LjtjOAIdnhRbrcI
	+LQQmrxIMEO9avUkRyJ/QD2OwUFvbMST5go5S56Q0LwdYMgxFqNoeOMcLZ2Tfpsgwnas/q
	T5QCVpRLi0npZ43aMPVooFe53XOxM3w=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-80-fBQgxhS6MTmPaoGzycm2qw-1; Tue, 12 Mar 2024 11:47:44 -0400
X-MC-Unique: fBQgxhS6MTmPaoGzycm2qw-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-33e8b535e27so1974442f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Mar 2024 08:47:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710258464; x=1710863264;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C03ZzqydLhwftyx/8OV079lEb5JdweH7XCPi8d8sS0U=;
        b=VLNYfZlvkUfSF3xYYIiAgnSeibTdhD2I8GKOJDIKaNuxOfA2PJtFTg8FqT5azKNcT5
         akOGChjKAiEgqswTJvSGNaa3M7N36q4zAXPWdmp+HYnKaeQow0lDdCuHnTUv7P/NizH3
         tG0NMW6aaqRt4hZPEJ4qk5cHI5UN/slHPa3kqz6vAvpliDK3Zw35lMKCs4u0lstxSO9Z
         JRIR2e5Dh8g9JEKdPuW9tYufJ59NSAjTgNH5CN9Qg12sP/wN0NgNul8s3xUvZuiyT+9K
         v6PlQAOdx0LKKnFQw0T1B0WMjvWRqvspYQIRsuBe/Pq9dYtesErmejZWEE0FBmhXbVKk
         fs5A==
X-Forwarded-Encrypted: i=1; AJvYcCVmSbtd3ZJmcOsqH7vGkEnGGX7s+wmU1UicJiIKfH8P4VhsnAPpLuPX6qJZZo07E9u4/xGV4MA2sAwvK2OzbDnLx+5zYzeCnz/YWWquN+Y=
X-Gm-Message-State: AOJu0YyBoN3CetXXbkhoI28L3FFScjZkFGL2Vh0Ld89WeAdTMLSgVbZm
	mKo/KIVnZcWumExMSDswHh1g/eGJnDJ5QSPQlinN+fO/ZDTlqTZ8cvp7JUqYNXy5RosMGw0fGc+
	NHUu8wxFVXvveiNJKDlHtJNKRnGKrGFGxcpF+8qtMdnX56VYNTisRt5xYPFdZGVhJ
X-Received: by 2002:a5d:5288:0:b0:33e:7ae7:accc with SMTP id c8-20020a5d5288000000b0033e7ae7acccmr5781980wrv.45.1710258463658;
        Tue, 12 Mar 2024 08:47:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDsApizg7abXDxnCPbaYlKdHgY8nGSh+z+TqlHOoR5D3BylQMjUqTJGZ6234DJDk41455U3g==
X-Received: by 2002:a5d:5288:0:b0:33e:7ae7:accc with SMTP id c8-20020a5d5288000000b0033e7ae7acccmr5781967wrv.45.1710258463239;
        Tue, 12 Mar 2024 08:47:43 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p18-20020adf9d92000000b0033e17341ebesm9404825wre.117.2024.03.12.08.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 08:47:42 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 maarten.lankhorst@linux.intel.com
In-Reply-To: <871qh3k4bg.fsf@minerva.mail-host-address-is-not-set>
References: <20230320015829.52988-1-jiapeng.chong@linux.alibaba.com>
 <871qh3k4bg.fsf@minerva.mail-host-address-is-not-set>
Date: Tue, 12 Mar 2024 16:47:41 +0100
Message-ID: <87wmq7310i.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CAA9043E4F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	FORGED_SENDER(0.30)[javierm@redhat.com,fmartine@redhat.com];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.133.124:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	URIBL_BLOCKED(0.00)[alibaba.com:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,fmartine@redhat.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
Message-ID-Hash: BBC5GGALPN2N54P72QEXMRYJ4UUWRD2S
X-Message-ID-Hash: BBC5GGALPN2N54P72QEXMRYJ4UUWRD2S
X-MailFrom: fmartine@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, tzimmermann@suse.de, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/shmem-helper: Remove duplicate include
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BBC5GGALPN2N54P72QEXMRYJ4UUWRD2S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Javier Martinez Canillas <javierm@redhat.com> writes:

> Jiapeng Chong <jiapeng.chong@linux.alibaba.com> writes:
>
>> ./drivers/gpu/drm/drm_gem_shmem_helper.c: linux/module.h is included more than once.
>>
>> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
>> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=4567
>> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
>> ---
>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
